using KRS_G54.Models;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Principal;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Net.Mail;
using System.Net;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;

namespace KRS_G54.Controllers
{
    public class UserController : Controller
    {

        public IActionResult Login()
        {

            ViewBag.Noti = TempData["Noti"];
            return View();
        }

        private readonly abcContext _context;

        public UserController(abcContext context)
        {
            _context = context;
        }
        [HttpPost]
        public IActionResult Login(string userName, string password)
        {
            var user = _context.Accounts.Include(r => r.Role).FirstOrDefault(u => u.UserName == userName);

            if (user != null && BCrypt.Net.BCrypt.Verify(password, user.Password))
            {
                if (user.Status && user.Role.Status)
                {
                    SetUserSession(user);
                    if (user.RoleId == 4)
                    {
                        return Redirect("/Home/Index");
                    }
                    else if (user.RoleId == 1)
                    {
                        return RedirectToAction("Index", "Home", new { area = "" });
                    }
                    else if (user.RoleId == 2)
                    {
                        return RedirectToAction("Index", "Home", new { area = "" });
                    }
                    else
                    {
                        return Redirect("/Home/Index");
                    }
                }
                else if (!user.Status)
                {
                    TempData["Error"] = "Your account has been disabled. Please contact the administrator.";
                    return View();
                }
                else if (!user.Role.Status)
                {
                    TempData["Error"] = "Your account has been disabled. Please contact the administrator.";
                    return View();
                }
            }

            TempData["Error"] = "Invalid username or password";
            return View();
        }

        public async Task GoogleLogin()
        {

            await HttpContext.ChallengeAsync(GoogleDefaults.AuthenticationScheme,
                new AuthenticationProperties()
                {
                    RedirectUri = Url.Action("GoogleResponse", "User", new { area = "" })
                });
        }
        public async Task<IActionResult> GoogleResponse()
        {
            var result = await HttpContext.AuthenticateAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            var claims = result.Principal.Identities.FirstOrDefault().Claims.Select(claim => new
            {
                claim.Issuer,
                claim.OriginalIssuer,
                claim.Type,
                claim.Value
            });
            var email = claims.FirstOrDefault(c => c.Type == ClaimTypes.Email)?.Value;
            if (!email.EndsWith("@fpt.edu.vn"))
            {
                TempData["Error"] = "Only Fpt email can log into the system";
                return new RedirectToActionResult("Login", "User", new { area = "" });
            }
            else
            {
                var existingUser = _context.Accounts.FirstOrDefault(a => a.Email == email);
                if (existingUser == null)
                {
                    int index = email.IndexOf('@');
                    string userName = "";
                    if (index > 0)
                    {
                        userName = email.Substring(0, index);
                    }
                    var account = new Account
                    {
                        UserName = userName,
                        Email = email,
                        FullName = claims.FirstOrDefault(c => c.Type == ClaimTypes.GivenName)?.Value,
                        Password = BCrypt.Net.BCrypt.HashPassword(GenerateRandomCode()),
                        Status = true,
                        ProfilePicture = "Default_pfp.svg.png",
                        RoleId = 4,
                        PhoneNumber = ""
                    };
                    _context.Accounts.Add(account);
                    await _context.SaveChangesAsync();
                    existingUser = account;
                    SetUserSession(existingUser);
                    return RedirectToAction("Index", "Home", new { area = "" });
                }
                else
                {
                    SetUserSession(existingUser);
                    return RedirectToAction("Index", "Home", new { area = "" });
                }
            }
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return Redirect("/User/Login");
        }
        [HttpGet]
        public IActionResult EditProfile()
        {

            return View();
        }
        [HttpPost]
        public async Task<IActionResult> EditProfile(string fullName, string userName, string mail, string phoneNumber, IFormFile profileImage)
        {
            ModelState.Remove("profileImage");
            if (string.IsNullOrEmpty(userName))
            {
                ModelState.AddModelError("UserName", "User Name is required");
            }

            if (string.IsNullOrEmpty(mail))
            {
                ModelState.AddModelError("Email", "Email is required");
            }
            else if (!new EmailAddressAttribute().IsValid(mail))
            {
                ModelState.AddModelError("Email", "Invalid email");
            }

            if (string.IsNullOrEmpty(fullName))
            {
                ModelState.AddModelError("FullName", "Full name is required");
            }
            if (string.IsNullOrEmpty(phoneNumber))
            {
                ModelState.AddModelError("PhoneNumber", "Phone number is required");
            }
            else if (!Regex.IsMatch(phoneNumber, @"^(09|03|07|08|05)+([0-9]{8})\b"))
            {
                ModelState.AddModelError("PhoneNumber", "Invalid phone number");
            }

            if (!ModelState.IsValid)
            {
                return View();
            }

            var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
            Account acc = _context.Accounts.FirstOrDefault(a => a.AccountId == accountId);
            if (acc != null)
            {
                acc.UserName = userName;
                acc.Email = mail;
                acc.FullName = fullName;
                acc.PhoneNumber = phoneNumber;
                if (profileImage != null && profileImage.Length > 0)
                {
                    var fileName = Path.GetFileName(profileImage.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/images/profile", fileName);
                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        await profileImage.CopyToAsync(fileStream);
                    }
                    acc.ProfilePicture = fileName;
                }
                _context.SaveChanges();
                SetUserSession(acc);
            }
            return View();
        }

        [HttpPost]
        public IActionResult UpdateStatus(int id)
        {
            var user = _context.Accounts.Find(id);
            if (user != null)
            {
                user.Status = !user.Status;
                _context.SaveChanges();
            }
            return RedirectToAction("ListUser");
        }
        [HttpGet]
        public IActionResult ForgotPassword()
        {
            return View();
        }
        [HttpPost]
        public IActionResult ForgotPassword(string email)
        {
            var user = _context.Accounts.FirstOrDefault(a => a.Email.Equals(email));
            if (user == null)
            {

                return View("Error");
            }
            string verificationCode = GenerateRandomCode();
            SendEmail(email, "Verification Code", $"Your verification code is: {verificationCode}");
            TempData["VerificationCode"] = verificationCode;
            TempData["Email"] = email;
            return RedirectToAction("VerifyCode");
        }

        [HttpGet]
        public IActionResult VerifyCode()
        {
            return View();
        }

        [HttpPost]
        public IActionResult VerifyCode(string verificationCode)
        {
            string savedVerificationCode = TempData["VerificationCode"] as string;
            if (verificationCode != savedVerificationCode)
            {
                ViewBag.Error = "Invalid verification code";
                return View();
            }
            TempData["Verified"] = true;
            return RedirectToAction("ResetPassword");
        }

        [HttpGet]
        public IActionResult ResetPassword()
        {
            if (TempData["Verified"] == null || !(bool)TempData["Verified"])
            {
                return RedirectToAction("VerifyCode");
            }
            return View();
        }

        [HttpPost]
        public IActionResult ResetPassword(string newPassword, string confirmNewPassword)
        {

            if (newPassword != confirmNewPassword)
            {
                ViewBag.Error = "New password and confirm password do not match";
                return View();
            }

            string email = TempData["Email"] as string;
            var user = _context.Accounts.FirstOrDefault(a => a.Email.Equals(email));
            if (user != null)
            {
                user.Password = newPassword;
                _context.SaveChanges();
            }
            else
            {
                return View("Error");
            }
            ViewBag.Noti = "Reset password successful";
            TempData["Noti"] = ViewBag.Noti;
            return RedirectToAction("Login");
        }
        //[HttpPost]
        //public IActionResult ForgotPassword(string email)
        //{
        //    var user=_context.Accounts.FirstOrDefault(a=>a.Email.Equals(email));
        //    if (user == null)
        //    {
        //        // Xử lý khi email không tồn tại trong hệ thống
        //        return View("Error");
        //    }
        //    string verificationCode = GenerateRandomCode();
        //    // Gọi hàm gửi email ở đây
        //    SendEmail(email, "Verification Code", $"Your verification code is: {verificationCode}");
        //    TempData["VerificationCode"] = verificationCode;
        //    TempData["Email"] = email;
        //    return RedirectToAction("ResetPassword");
        //}
        //[HttpGet]
        //public IActionResult ResetPassword()
        //{
        //    return View();

        //}

        //[HttpPost]
        //public IActionResult ResetPassword(string newPassword, string confirmNewPassword, string verificationCode)
        //{
        //    // Kiểm tra xác nhận mật khẩu mới
        //    if (newPassword != confirmNewPassword)
        //    {
        //        ViewBag.Error = "New password and confirm password do not match";
        //        return View();
        //    }

        //    // Kiểm tra mã xác minh
        //    string savedVerificationCode = TempData["VerificationCode"] as string;
        //    string email = TempData["Email"] as string;
        //    if (verificationCode != savedVerificationCode)
        //    {
        //        ViewBag.Error = "Invalid verification code";
        //        return View();
        //    }

        //    // Thực hiện thay đổi mật khẩu trong cơ sở dữ liệu
        //    var user = _context.Accounts.FirstOrDefault(a => a.Email.Equals(email));
        //    if (user != null)
        //    {
        //        user.Password = newPassword; // Đây là phần cập nhật mật khẩu, thực hiện tương tự trong ứng dụng của bạn
        //        _context.SaveChanges(); // Lưu thay đổi
        //    }
        //    else
        //    {
        //        //Xử lý trường hợp không tìm thấy người dùng
        //        return View("Error");
        //    }
        //    ViewBag.Noti = "Reset password successful";
        //    TempData["Noti"] = ViewBag.Noti;
        //    // Chuyển hướng hoặc hiển thị thông báo thành công
        //    return RedirectToAction("Login");
        //}
        public IActionResult ResetPasswordSuccess()
        {
            return View();
        }
        [HttpGet]
        public IActionResult ChangePassword()
        {
            return View();
        }
        [HttpPost]
        public IActionResult ChangePassword(string currentPassword, string newPassword, string confirmNewPassword)
        {

            var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
            var user = _context.Accounts.FirstOrDefault(a => a.AccountId == accountId);


            if (user != null && user.Password == currentPassword)
            {

                if (newPassword == confirmNewPassword)
                {
                    string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newPassword);
                    user.Password = hashedPassword;
                    _context.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "New password and confirm password do not match.");
                }
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Current password is incorrect.");
            }
            return View();
        }

        [HttpPost]
        public IActionResult SendVerificationCode()
        {

            string email = HttpContext.Session.GetString("mail");


            string verificationCode = GenerateRandomCode();
            HttpContext.Session.SetString("VerificationCode", verificationCode);


            SendEmail(email, "Verification Code", $"Your verification code is: {verificationCode}");


            return Json(new { success = true });
        }

        private void SendEmail(string email, string subject, string body)
        {
            string senderEmail = "Tunkieu9@gmail.com";
            string password = "tnuyadbmkbziwztm";


            using (SmtpClient client = new SmtpClient("smtp.gmail.com"))
            {
                client.Port = 587;
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(senderEmail, password);

                // Tạo đối tượng MailMessage để tạo email
                MailMessage mailMessage = new MailMessage(senderEmail, email, subject, body);
                mailMessage.IsBodyHtml = true;

                try
                {
                    // Gửi email
                    client.Send(mailMessage);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error sending email: " + ex.Message);
                }
            }
        }


        private string GenerateRandomCode()
        {
            Random random = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, 6)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        private void SetUserSession(Account user)
        {
            HttpContext.Session.SetString("userName", user.UserName);
            HttpContext.Session.SetString("mail", user.Email);
            HttpContext.Session.SetString("roleId", user.RoleId.ToString());
            HttpContext.Session.SetString("accId", user.AccountId.ToString());
            HttpContext.Session.SetString("fullName", user.FullName);
            HttpContext.Session.SetString("profilePicture", user.ProfilePicture);
            HttpContext.Session.SetString("phoneNumber", user.PhoneNumber);
        }
    }
}
