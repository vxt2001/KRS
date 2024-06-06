using KRS_G54.Filters;
using KRS_G54.Models;
using Microsoft.AspNetCore.Mvc;

namespace KRS_G54.Areas.Admin.Controllers
{
    [ServiceFilter(typeof(AdminRoleAttribute))]
    [Area("Admin")]
    public class HomeController : Controller
    {
        private readonly abcContext _context;
        public HomeController(abcContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var totalAccounts = _context.Accounts.Count();
            ViewBag.TotalAccounts = totalAccounts;
            var totalSubjects = _context.Subjects.Count();
            ViewBag.TotalSubjects = totalSubjects;
            var totalSemesters = _context.Semesters.Count();
            ViewBag.Semesters = totalSemesters;
            return View();
        }
    }
}
