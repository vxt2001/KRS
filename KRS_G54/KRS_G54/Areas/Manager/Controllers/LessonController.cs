using X.PagedList;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using KRS_G54.Filters;

namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class LessonController : Controller
	{
		private readonly abcContext _context;
		private readonly ILessonRepository _repo;
		public LessonController(abcContext context, ILessonRepository repo)
		{
			_repo = repo;
			_context = context;
		}

		public IActionResult Index(int? page)
		{
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            var lessons = _context.Lessons.Include(s => s.Subject).ToList();
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(lessons.ToPagedList(pageNumber, pageSize));
		}
        [HttpGet]
        public ActionResult Create()
        {
            var subjects = _context.Subjects.ToList();
            var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
            ViewBag.SubjectSelectList = SubjectSelectList;
            return View();
        }
        [HttpPost]
        public ActionResult Create(Lesson lesson)
        {
            ModelState.Remove("Subject");
            if (ModelState.IsValid)
            {
                if (_repo.GetAll().Any(p => p.Topic == lesson.Topic))
                {
                    ModelState.AddModelError("Topic", "Topic has already exists.");
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }else if(_repo.GetAll().Any(p => p.Order == lesson.Order))
                {
                    ModelState.AddModelError("Order", "Slot has already exists.");
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }
                else if (lesson.Order > 30)
                {
                    ModelState.AddModelError("Order", "Slot cannot be greater than 30.");
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }
                try
                {
                    _repo.Add(lesson);
                    _repo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }
            }else
            {
                var subjects = _context.Subjects.ToList();
                var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                ViewBag.SubjectSelectList = SubjectSelectList;
                return View(lesson);
            }
            

        }
        [HttpGet]
        public ActionResult Edit(int? id)
        {
            
            if (id.HasValue)
            {
                var lesson = _repo.Find(id.Value);
                if (lesson != null)
                {
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }
            }
            return RedirectToAction(nameof(Index));
        }
        [HttpPost]
        public ActionResult Edit(int? id, Lesson lesson)
        {
            ModelState.Remove("Subject");
            if (ModelState.IsValid)
            {
                if (id != lesson.LessonId)
                {
                    return NotFound();
                }
                try
                {
                    _repo.Update(lesson);
                    _repo.Save();
                    return RedirectToAction(nameof(Index));
                }
                catch
                {
                    var subjects = _context.Subjects.ToList();
                    var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                    ViewBag.SubjectSelectList = SubjectSelectList;
                    return View(lesson);
                }
            }
            else
            {
                var subjects = _context.Subjects.ToList();
                var SubjectSelectList = new SelectList(subjects, "SubjectId", "SubjectName");
                ViewBag.SubjectSelectList = SubjectSelectList;
                return View(lesson);
            }
          
        }
       
        public IActionResult Search(string searchString, int? page)
        {
            // Lấy danh sách các role từ database, có thể thay thế bằng logic của bạn
            var lessons = _context.Lessons.Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                lessons = lessons.Where(l => l.Topic.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", lessons.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult SortBySlot(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var lessons = _context.Lessons.Include(s => s.Subject).ToList();

            switch (sortOrder)
            {
                case "asc":
                    lessons = lessons.OrderBy(l => l.Order).ToList();
                    var subjects = _context.Subjects.ToList();
                    ViewBag.Subjects = subjects;
                    break;
                case "desc":
                    lessons = lessons.OrderByDescending(l => l.Order).ToList();
                    subjects = _context.Subjects.ToList();
                    ViewBag.Subjects = subjects;
                    break;
                default:
                    // Mặc định sắp xếp theo thứ tự tăng dần
                    lessons = lessons.OrderBy(l => l.Order).ToList();
                    subjects = _context.Subjects.ToList();
                    ViewBag.Subjects = subjects;
                    break;
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", lessons.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterBySubject(int? subjectId, int? page)
        {
            var lesssons = _context.Lessons.Include(s => s.Subject).ToList();
            var subjects = _context.Subjects.ToList();
            ViewBag.Subjects = subjects;
            if (subjectId.HasValue)
            {
                lesssons = lesssons.Where(l => l.SubjectId == subjectId.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("Index", lesssons.ToPagedList(pageNumber, pageSize));
        }
    }
}
