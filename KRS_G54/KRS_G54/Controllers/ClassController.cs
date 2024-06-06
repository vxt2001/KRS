using KRS_G54.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using X.PagedList;

namespace KRS_G54.Controllers
{
    public class ClassController : Controller
    {
        private readonly abcContext _context;
        public ClassController(abcContext context)
        {
            _context = context;
        }
        public IActionResult Index(int? id, int? page)
        {
            var clazz = _context.Classes.Include(s => s.Subject).FirstOrDefault(c => c.ClassId == id.Value);
            HttpContext.Session.SetString("ClassId", id.ToString());
            if (clazz != null)
            {
                var subjectId = clazz.Subject.SubjectId;
                var lessons = _context.Lessons
                    .Where(l => l.SubjectId == subjectId)
                    .OrderBy(l => l.Order)
                    .ToPagedList(page ?? 1, 3); // Sử dụng ToPagedList

                ViewBag.Lessons = lessons;
            }

            if (clazz == null) return NotFound();

            var classUser = _context.ClassUsers
                .Include(cu => cu.Account)
                .FirstOrDefault(cu => cu.ClassId == clazz.ClassId && cu.IsTeacher == true);

            if (classUser == null) return NotFound();

            ViewBag.classTeacher = classUser.Account.UserName;
            ViewBag.classSubject = clazz.Subject.SubjectName;
            ViewBag.className = clazz.ClassName;
            ViewBag.ClazzId = clazz.ClassId;
            return View();
        }
    }
}
