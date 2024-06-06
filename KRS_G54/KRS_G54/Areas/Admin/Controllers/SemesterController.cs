using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Xml.Linq;
using X.PagedList;

namespace KRS_G54.Areas.Admin.Controllers
{
    [ServiceFilter(typeof(AdminRoleAttribute))]
    [Area("Admin")]
    public class SemesterController : Controller
    {
        private readonly ISemesterRepository _repo;
        private readonly abcContext _context;
        public SemesterController(ISemesterRepository repo, abcContext context)
        {
            _repo = repo;
            _context = context;
        }

        public IActionResult Index(int? page)
        {
            var semesters =_repo.GetAll();
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(semesters.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult Search(string searchString, int? page)
        {
         
            var semesters = _repo.GetAll();
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                semesters = semesters.Where(s => s.SemesterName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", semesters.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(Semester semester)
        {
            if (ModelState.IsValid)
            {
                if (_repo.GetAll().Any(s => s.SemesterName.Equals(semester.SemesterName)))
                {
                    ModelState.AddModelError("SemesterName", "A semester with the same name already exists.");
                    return View(semester);
                }
                try
                {
                    _repo.Add(semester);
                    _repo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {

                }
            }
           
            return View(semester);
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id.HasValue)
            {
                var semester = _repo.Find(id.Value);
                if (semester != null)
                {
                    return View(semester);
                }
            }
            return RedirectToAction(nameof(Index));
        }
        [HttpPost]
        public ActionResult Edit(int? id, Semester semester)
        {
            if (ModelState.IsValid)
            {
                if (id != semester.SemesterId)
                {
                    return NotFound();
                }
                try
                {
                    _repo.Update(semester);
                    _repo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {

                }
            }
            
            return View(semester);
        }
        public IActionResult SortByName(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var semesters = _repo.GetAll();

            switch (sortOrder)
            {
                case "asc":
                    semesters = semesters.OrderBy(s => s.SemesterName).ToList();
                    break;
                case "desc":
                    semesters = semesters.OrderByDescending(s => s.SemesterName).ToList();
                    break;
                default:
                    semesters = semesters.OrderBy(s => s.SemesterName).ToList();
                    break;
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", semesters.ToPagedList(pageNumber, pageSize));
        }
    }
}
