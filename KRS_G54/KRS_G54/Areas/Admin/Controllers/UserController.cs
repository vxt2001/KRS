using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Security.Principal;

using System.Text;
using X.PagedList;

namespace KRS_G54.Areas.Admin.Controllers
{
    [ServiceFilter(typeof(AdminRoleAttribute))]
    [Area("Admin")]
    public class UserController : Controller
    {
        private readonly IUserRepository _repo;
        private readonly abcContext _context;
        public UserController(IUserRepository repo, abcContext context)
        {
            _repo = repo;
            _context = context;
        }

        //[Authorize]
        public IActionResult ListUser(int? page)
        {
            //if (!HttpContext.User.Identity.IsAuthenticated)
            //{

            //    return Redirect("/User/Login");
            //}
            var users = _context.Accounts.Include(u => u.Role).ToList();
            var roles = _context.Roles.OrderBy(s => s.RoleName).ToList();
            ViewBag.Roles = roles;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(users.ToPagedList(pageNumber, pageSize));
        }

        public IActionResult Search(string searchString, int? page)
        {
            // Lấy danh sách các role từ database, có thể thay thế bằng logic của bạn
            var accounts = _context.Accounts.Include(u => u.Role).ToList();
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                accounts = accounts.Where(u => u.UserName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0 || u.FullName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0 || u.Email.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0 || u.PhoneNumber.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            var roles = _context.Roles.OrderBy(s => s.RoleName).ToList();
            ViewBag.Roles = roles;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListUser", accounts.ToPagedList(pageNumber, pageSize));
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
        public ActionResult Create()
        {
            var specificRoleIds = new List<int> { 1, 2, 3 };
            var role = _context.Roles
     .Where(r => specificRoleIds.Contains(r.RoleId))
     .ToList();
            var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
            ViewBag.RoleSelectList = RoleSelectList;
            string password = GenerateRandomPassword(8);
            HttpContext.Session.SetString("password", password);
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);
            HttpContext.Session.SetString("hashedPassword", hashedPassword);
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(Account user)
        {
            ModelState.Remove("Role");
            if (ModelState.IsValid)
            {
                try
                {
                    if (_repo.GetAll().Any(p => p.UserName.Equals(user.UserName)))
                    {
                        ModelState.AddModelError("UserName", "An account with the same username already exists.");
                        var specificRoleIds = new List<int> { 1, 2, 3 };
                        var role = _context.Roles
                            .Where(r => specificRoleIds.Contains(r.RoleId))
                            .ToList();
                        var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
                        ViewBag.RoleSelectList = RoleSelectList;
                        return View(user);
                    }
                    string plainPassword = HttpContext.Session.GetString("password");
                    string hashedPassword = HttpContext.Session.GetString("hashedPassword");
                    user.Password = hashedPassword;
                    _repo.Add(user);
                    _repo.Save();
                    using (var client = new MailKit.Net.Smtp.SmtpClient())
                    {
                        try
                        {
                            client.Connect("smtp.gmail.com", 587, MailKit.Security.SecureSocketOptions.StartTls);
                            client.Authenticate("Tunkieu9@gmail.com", "tnuyadbmkbziwztm");

                            var message = new MimeKit.MimeMessage();
                            message.From.Add(new MimeKit.MailboxAddress("KRS", "ninjajatrang1999@gmail.com"));
                            message.To.Add(new MimeKit.MailboxAddress(user.UserName, user.Email));
                            message.Subject = "Thông tin tài khoản";
                            message.Body = new MimeKit.TextPart("plain")
                            {
                                Text = $"Xin chào, Tài khoản của bạn đã được tạo thành công.\nUsername: {user.UserName}, Password: {plainPassword}\nTrân trọng!"
                            };

                            client.Send(message);
                            client.Disconnect(true);
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                    return RedirectToAction(nameof(ListUser));
                }
                catch
                {
                    var specificRoleIds = new List<int> { 1, 2, 3 };
                    var role = _context.Roles
                        .Where(r => specificRoleIds.Contains(r.RoleId))
                        .ToList();
                    var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
                    ViewBag.RoleSelectList = RoleSelectList;
                    return View(user);
                }
            }
            else
            {
                var specificRoleIds = new List<int> { 1, 2, 3 };
                var role = _context.Roles
                    .Where(r => specificRoleIds.Contains(r.RoleId))
                    .ToList();
                var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
                ViewBag.RoleSelectList = RoleSelectList;
                return View(user);
            }
        }
        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id.HasValue)
            {
                var account = _context.Accounts.Include(a => a.Role).FirstOrDefault(a => a.AccountId == id.Value);
                if (account != null)
                {
                    var role = _context.Roles.ToList();
                    var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
                    ViewBag.RoleSelectList = RoleSelectList;
                    return View(account);
                }
            }
            return RedirectToAction(nameof(ListUser));
        }
        [HttpPost]
        public ActionResult Edit(int? id, Account account)
        {
            ModelState.Remove("Role");
            if (ModelState.IsValid)
            {
                if (id != account.AccountId)
                {
                    return NotFound();
                }
                try
                {
                    _repo.Update(account);
                    _repo.Save();
                    return RedirectToAction(nameof(ListUser));
                }
                catch
                {
                    var role = _context.Roles.ToList();
                    var RoleSelectList = new SelectList(role, "RoleId", "RoleName");
                    ViewBag.RoleSelectList = RoleSelectList;
                    return View(account);
                }
            }
            var roleList = _context.Roles.ToList();
            var roleSelectListt = new SelectList(roleList, "RoleId", "RoleName");
            ViewBag.RoleSelectList = roleSelectListt;
            return View(account);
        }
        public IActionResult SortByName(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var accounts = _context.Accounts.Include(u => u.Role).ToList();

            switch (sortOrder)
            {
                case "asc":
                    accounts = accounts.OrderBy(u => u.UserName).ToList();
                    break;
                case "desc":
                    accounts = accounts.OrderByDescending(u => u.UserName).ToList();
                    break;
                default:
                    accounts = accounts.OrderBy(u => u.UserName).ToList();
                    break;
            }
            var roles = _context.Roles.OrderBy(s => s.RoleName).ToList();
            ViewBag.Roles = roles;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListUser", accounts.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterByStatus(bool? status, int? page)
        {
            var accounts = _context.Accounts.Include(u => u.Role).ToList();

            if (status.HasValue)
            {
                accounts = accounts.Where(u => u.Status == status.Value).ToList();
            }
            var roles = _context.Roles.OrderBy(s => s.RoleName).ToList();
            ViewBag.Roles = roles;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListUser", accounts.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterByRole(int? roleId, int? page)
        {
            var accounts = _context.Accounts.Include(u => u.Role).ToList();

            if (roleId.HasValue)
            {
                accounts = accounts.Where(u => u.RoleId == roleId.Value).ToList();
            }
            var roles = _context.Roles.OrderBy(s => s.RoleName).ToList();
            ViewBag.Roles = roles;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListUser", accounts.ToPagedList(pageNumber, pageSize));
        }
        public string GenerateRandomPassword(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();
        }
        private void SendEmail(string email, string subject, string body)
        {
            string senderEmail = "Tunkieu9@gmail.com";
            string password = "tnuyadbmkbziwztm@";


            using (SmtpClient client = new SmtpClient("smtp.gmail.com"))
            {
                client.Port = 587;
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(senderEmail, password);

                MailMessage mailMessage = new MailMessage(senderEmail, email, subject, body);
                mailMessage.IsBodyHtml = true;

                try
                {
                    client.Send(mailMessage);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error sending email: " + ex.Message);
                }
            }
        }


    }
}


