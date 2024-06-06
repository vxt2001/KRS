using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using System.Data;
using System.Security.Claims;
using System.Security.Principal;
using X.PagedList;

namespace KRS_G54.Areas.Admin.Controllers
{
    [ServiceFilter(typeof(AdminRoleAttribute))]
    [Area("Admin")]
    public class SubjectController : Controller
    {
        private readonly ISubjectRepository _subjectrepo;
        private readonly abcContext _context;

        public SubjectController(ISubjectRepository subjectrepo, abcContext context)
        {
            _subjectrepo = subjectrepo;
            _context = context;
        }

        public IActionResult Index(int? page)
        {
            var subjects = _context.Subjects.Include(s => s.Account).ToList();
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(subjects.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult Search(string searchString, int? page)
        {

            var subjects = _context.Subjects.Include(u => u.Account).ToList();
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                subjects = subjects.Where(u => u.SubjectName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0 || u.SubjectCode.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", subjects.ToPagedList(pageNumber, pageSize));
        }
        [HttpPost]
        public IActionResult UpdateStatus(int id)
        {
            var subject = _context.Subjects.Find(id);
            if (subject != null)
            {
                subject.Status = !subject.Status;
                _context.SaveChanges();
            }
            return RedirectToAction(nameof(Index));
        }
        [HttpGet]
        public ActionResult Create()
        {
            var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
            var AccountSelectList = new SelectList(account, "AccountId", "UserName");
            ViewBag.AccountSelectList = AccountSelectList;
            return View();
        }
        [HttpPost]
        public ActionResult Create(Subject subject)
        {
            ModelState.Remove("Account");
            if (ModelState.IsValid)
            {
                if (_subjectrepo.GetAll().Any(p => p.SubjectCode == subject.SubjectCode))
                {
                    ModelState.AddModelError("SubjectCode", "A subject code with the same code already exists.");
                    var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                    var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(subject);
                }
                try
                {
                    _subjectrepo.Add(subject);
                    _subjectrepo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                    var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(subject);
                }
            }
            else
            {
                var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                ViewBag.AccountSelectList = AccountSelectList;
                return View(subject);
            }
        }
        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id.HasValue)
            {
                var subject = _subjectrepo.Find(id.Value);
                if (subject != null)
                {
                    var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                    var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(subject);
                }
            }
            return RedirectToAction(nameof(Index));
        }
        [HttpPost]
        public ActionResult Edit(int? id, Subject subject)
        {
            ModelState.Remove("Account");
            if (ModelState.IsValid)
            {
                if (id != subject.SubjectId)
                {
                    return NotFound();
                }
                try
                {
                    _subjectrepo.Update(subject);
                    _subjectrepo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                    var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                    ViewBag.AccountSelectList = AccountSelectList;
                    return View(subject);
                }
            }
            else
            {
                var account = _context.Accounts.Where(a => a.RoleId == 2).ToList();
                var AccountSelectList = new SelectList(account, "AccountId", "UserName");
                ViewBag.AccountSelectList = AccountSelectList;
                return View(subject);
            }
        }
        public IActionResult SortByName(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var subjects = _context.Subjects.Include(u => u.Account).ToList();

            switch (sortOrder)
            {
                case "asc":
                    subjects = subjects.OrderBy(u => u.SubjectName).ToList();
                    break;
                case "desc":
                    subjects = subjects.OrderByDescending(u => u.SubjectName).ToList();
                    break;
                default:
                    // Mặc định sắp xếp theo thứ tự tăng dần
                    subjects = subjects.OrderBy(u => u.SubjectName).ToList();
                    break;
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", subjects.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterByStatus(bool? status, int? page)
        {
            var subjects = _context.Subjects.Include(u => u.Account).ToList();

            if (status.HasValue)
            {
                subjects = subjects.Where(u => u.Status == status.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", subjects.ToPagedList(pageNumber, pageSize));
        }


    }
}