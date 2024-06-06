using ExcelDataReader;
using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.ImplementRepository;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json;
using System;
using System.Drawing.Printing;
using System.Net;
using System.Security.Claims;
using X.PagedList;

namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class ClassController : Controller
    {
        private readonly IClassRepository _classRepo;
        private readonly ISubjectRepository _subjectRepo;
        private readonly IAccountRepository _accountRepo;
        private readonly IClassUserRepository _classUserRepo;
        private readonly ISemesterRepository _semesterRepo;
        private readonly abcContext _context;
        public ClassController(IClassRepository repo,
            ISubjectRepository subjectrepo,
            IAccountRepository accountRepository,
            IClassUserRepository classUserRepo,
            ISemesterRepository semesterRepo,
            abcContext context)
        {
            _classRepo = repo;
            _subjectRepo = subjectrepo;
            _accountRepo = accountRepository;
            _classUserRepo = classUserRepo;
            _semesterRepo = semesterRepo;
            _context = context;
        }
        public IActionResult Index(int? page)
        {
            var clazzes = _context.Classes.Include(s => s.Semester).Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var semesters = _context.Semesters.OrderBy(s => s.SemesterName).ToList();
            ViewBag.Semesters = semesters;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(clazzes.ToPagedList(pageNumber, pageSize));
        }
        [HttpPost]
        public IActionResult UpdateStatus(int id)
        {
            var classes = _context.Classes.Find(id);
            if (classes != null)
            {
                classes.Status = !classes.Status;
                _context.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public IActionResult SortByName(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var classes = _context.Classes.Include(a => a.Semester).Include(s => s.Subject).ToList();

            switch (sortOrder)
            {
                case "asc":
                    classes = classes.OrderBy(u => u.ClassName).ToList();
                    break;
                case "desc":
                    classes = classes.OrderByDescending(u => u.ClassName).ToList();
                    break;
                default:
                    // Mặc định sắp xếp theo thứ tự tăng dần
                    classes = classes.OrderBy(u => u.ClassName).ToList();
                    break;
            }
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var semesters = _context.Semesters.ToList();
            ViewBag.Semesters = semesters;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", classes.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterByStatus(bool? status, int? page)
        {
            var classes = _context.Classes.Include(a => a.Semester).Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var semesters = _context.Semesters.ToList();
            ViewBag.Semesters = semesters;
            if (status.HasValue)
            {
                classes = classes.Where(u => u.Status == status.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", classes.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult Create()
        {
            var subjects = _subjectRepo.GetAll();
            var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
            ViewBag.SubjectSelectList = SubjectSelectList;
            var semesters = _semesterRepo.GetAll();
            var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
            ViewBag.SemesterSelectList = SemesterSelectList;
            var accs = _accountRepo.GetAll();
            var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
            ViewBag.AccountSelectList = AccountSelectList;
            return View();
        }
        [HttpPost]
        public ActionResult Create(Class clazz)
        {
            ModelState.Remove("Semester");
            ModelState.Remove("Subject");
            if (ModelState.IsValid)
            {
                if (_classRepo.GetAll().Any(p => p.ClassName == clazz.ClassName && p.SubjectId == clazz.SubjectId))
                {
                    ModelState.AddModelError("SubjectId", "A class with the same subject has already exists.");
                    var subject = _subjectRepo.GetAll();
                    var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    var semesters = _semesterRepo.GetAll();
                    var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                    ViewBag.SemesterSelectList = SemesterSelectList;
                    var accs = _accountRepo.GetAll();
                    var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(clazz);
                }
                if (_classRepo.GetAll().Count(p => p.ClassName == clazz.ClassName && p.SemesterId == clazz.SemesterId) >= 5)
                {
                    ModelState.AddModelError("SubjectId", "A class can contain a maximum of 5 subjects in a semester.");
                    var subject = _subjectRepo.GetAll();
                    var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    var semesters = _semesterRepo.GetAll();
                    var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                    ViewBag.SemesterSelectList = SemesterSelectList;
                    var accs = _accountRepo.GetAll();
                    var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(clazz);
                }
                try
                {
                    _classRepo.Add(clazz);
                    _classRepo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var subject = _subjectRepo.GetAll();
                    var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    var semesters = _semesterRepo.GetAll();
                    var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                    ViewBag.SemesterSelectList = SemesterSelectList;
                    var accs = _semesterRepo.GetAll();
                    var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(clazz);
                }
            }
            else
            {
                var subject = _subjectRepo.GetAll();
                var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                ViewBag.SubjectSelectList = SubjectSelectList;
                var semesters = _semesterRepo.GetAll();
                var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                ViewBag.SemesterSelectList = SemesterSelectList;
                var accs = _semesterRepo.GetAll();
                var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                ViewBag.AccountSelectList = AccountSelectList;
                return View(clazz);
            }

        }
        [HttpGet]
        public ActionResult Edit(int? id)
        {

            if (id.HasValue)
            {
                var clazz = _classRepo.Find(id.Value);
                if (clazz != null)
                {
                    var subject = _subjectRepo.GetAll();
                    var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    var semesters = _semesterRepo.GetAll();
                    var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                    ViewBag.SemesterSelectList = SemesterSelectList;
                    var accs = _accountRepo.GetAll();
                    var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    var classUser = clazz.ClassUsers.Count();
                    return View(clazz);
                }
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        public ActionResult Edit(int? id, Class clazz)
        {
            ModelState.Remove("Semester");
            ModelState.Remove("Subject");
            if (ModelState.IsValid)
            {
                if (id != clazz.ClassId)
                {
                    return NotFound();
                }
                try
                {
                    _classRepo.Add(clazz);
                    _classRepo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var subject = _subjectRepo.GetAll();
                    var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    var semesters = _semesterRepo.GetAll();
                    var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                    ViewBag.SemesterSelectList = SemesterSelectList;
                    var accs = _accountRepo.GetAll();
                    var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    var classUser = clazz.ClassUsers.Count();
                    return View(clazz);
                }
            }
            else
            {
                var subject = _subjectRepo.GetAll();
                var SubjectSelectList = new SelectList(subject, "SubjectId", "SubjectName");
                ViewBag.SubjectSelectList = SubjectSelectList;
                var semesters = _semesterRepo.GetAll();
                var SemesterSelectList = new SelectList(semesters, "SemesterId", "SemesterName");
                ViewBag.SemesterSelectList = SemesterSelectList;
                var accs = _accountRepo.GetAll();
                var AccountSelectList = new SelectList(accs, "AccountId", "UserName");
                ViewBag.AccountSelectList = AccountSelectList;
                return View(clazz);
            }
        }
        public ActionResult Delete(int? id)
        {
            if (id.HasValue)
            {
                _classRepo.Delete(id.Value);
                _classRepo.Save();
            }
            return RedirectToAction(nameof(Index));
        }
        public async Task<ActionResult> Save()
        {
            string excelDataJson = HttpContext.Session.GetString("ExcelData");
            if (!string.IsNullOrEmpty(excelDataJson))
            {
                List<List<object>> excelData = JsonConvert.DeserializeObject<List<List<object>>>(excelDataJson);
                for (int i = 1; i < excelData.Count; i++)
                {
                    List<object> row = excelData[i];
                    var accountId = Convert.ToInt32(row[0]);
                    var classId = Convert.ToInt32(HttpContext.Session.GetString("classId"));

                    // Kiểm tra xem cặp AccountId và ClassId đã tồn tại chưa
                    if (!_context.ClassUsers.Any(cu => cu.AccountId == accountId && cu.ClassId == classId && cu.IsTeacher == true))
                    {
                        var classUser = new ClassUser
                        {
                            AccountId = accountId,
                            ClassId = classId
                        };
                        _context.ClassUsers.Add(classUser);
                    }else
                    {
                        return RedirectToAction(nameof(AddUser));
                    }
                }
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(Index));
        }
        [HttpGet]
        public ActionResult AddUser(int? classId)
        {
            HttpContext.Session.SetString("classId", classId.ToString());
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AddUser(int? classId, IFormFile file)
        {
            try
            {
                
                System.Text.Encoding.RegisterProvider(System.Text.CodePagesEncodingProvider.Instance);
                if (file != null && file.Length > 0)
                {
                    if (file != null && file.Length > 0)
                    {
                        var uploadDirectory = $"{Directory.GetCurrentDirectory()}\\wwwroot\\Uploads";

                        if (!Directory.Exists(uploadDirectory))
                        {
                            Directory.CreateDirectory(uploadDirectory);
                        }

                        var filePath = Path.Combine(uploadDirectory, file.FileName);

                        using (var stream = new FileStream(filePath, FileMode.Create))
                        {
                            await file.CopyToAsync(stream);
                        }


                        using (var stream = System.IO.File.Open(filePath, FileMode.Open, FileAccess.Read))
                        {
                            var excelData = new List<List<object>>();
                            using (var reader = ExcelReaderFactory.CreateReader(stream))
                            {
                                do
                                {

                                    while (reader.Read())
                                    {
                                        var rowData = new List<object>();
                                        for (int column = 0; column < reader.FieldCount; column++)
                                        {
                                            rowData.Add(reader.GetValue(column));
                                        }
                                        excelData.Add(rowData);
                                    }
                                } while (reader.NextResult());
                                string excelDataJson = JsonConvert.SerializeObject(excelData);
                                HttpContext.Session.SetString("ExcelData", excelDataJson);
                                ViewBag.ExcelData = excelData;
                            }
                        }
                    }
                }
                else
                {
                    ViewBag.Message = "Empty";
                }
                return View();
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred: {ex.Message}");
            }
        }

        public IActionResult Search(string searchString, int? page)
        {

            var classes = _context.Classes.Include(a => a.Semester).Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var semesters = _context.Semesters.ToList();
            ViewBag.Semesters = semesters;
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                classes = classes.Where(r => r.ClassName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0
                || r.Subject.SubjectName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0
                || r.Subject.SubjectCode.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", classes.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Detail(int? id)
        {
            if (id.HasValue)
            {
                var clazz = _context.Classes.Include(s => s.Semester).Include(a => a.Subject).Include(cl => cl.ClassUsers).FirstOrDefault(c => c.ClassId == id.Value);
                if (clazz != null)
                {
                    ViewBag.ClassId = clazz.ClassId;
                    var studentList = _context.ClassUsers
    .Include(cu => cu.Account)
    .Where(cu => cu.ClassId == id.Value && cu.IsTeacher == false && cu.Account.Status == true)
    .Select(cu => new
    {
        cu.Account.AccountId,
        cu.Account.UserName,
        cu.Account.Email,
        cu.Account.FullName

    })
    .ToList();
                    
                    var subjectCode = clazz.Subject.SubjectCode;
                    var subjectName = clazz.Subject.SubjectName;
                    var semester = clazz.Semester.SemesterName;
                    ViewBag.SubjectName = subjectName;
                    ViewBag.SemesterName = semester;
                    ViewBag.SubjectCode = subjectCode;
                    ViewBag.StudentList = studentList;
                    return View(clazz);
                }
            }
            return RedirectToAction(nameof(Index));
        }

        public async Task<ActionResult> DeleteStudentFromClass(int classId, int accountId)
        {
            var classUser = await _context.ClassUsers
                                          .FirstOrDefaultAsync(cu => cu.ClassId == classId && cu.AccountId == accountId && cu.IsTeacher == false);

            if (classUser != null)
            {
                _context.ClassUsers.Remove(classUser);
                await _context.SaveChangesAsync();
                return RedirectToAction("Detail", new { id = classId });
            }
            else
            {
                return NotFound();
            }
        }
        public IActionResult FilterBySubject(int? subjectId, int? page)
        {
            var clazzes = _context.Classes.Include(s => s.Semester).Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var semesters = _context.Semesters.ToList();
            ViewBag.Semesters = semesters;
            if (subjectId.HasValue)
            {
                clazzes = clazzes.Where(f => f.SubjectId == subjectId.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", clazzes.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterBySemester(int? semesterId, int? page)
        {
            var clazzes = _context.Classes.Include(s => s.Semester).Include(s => s.Subject).ToList();
            var semesters = _context.Semesters.ToList();
            ViewBag.Semesters = semesters;
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            if (semesterId.HasValue)
            {
                clazzes = clazzes.Where(f => f.SemesterId == semesterId.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", clazzes.ToPagedList(pageNumber, pageSize));
        }

    }
}
