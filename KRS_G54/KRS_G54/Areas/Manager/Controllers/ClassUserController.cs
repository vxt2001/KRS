using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;

namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class ClassUserController : Controller
    {
        private readonly IClassUserRepository _classUserrepo;
        private readonly abcContext _context;
        public ClassUserController(IClassUserRepository repo, abcContext context)
        {
            _classUserrepo = repo;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
       
    }
}
