using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;

namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class HomeController : Controller
    {
        private readonly abcContext _context;
        public HomeController(abcContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var totalClasses = _context.Classes.Count();
            ViewBag.TotalClasses = totalClasses;
            var totaLessons = _context.Lessons.Count();
            ViewBag.TotalLessons = totaLessons;
            return View();
        }
    }
}
