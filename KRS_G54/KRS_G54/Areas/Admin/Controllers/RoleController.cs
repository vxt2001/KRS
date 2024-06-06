using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.Data;
using System.Xml.Linq;
using X.PagedList;

namespace KRS_G54.Areas.Admin.Controllers
{
    [ServiceFilter(typeof(AdminRoleAttribute))]
    [Area("Admin")]
    public class RoleController : Controller
    {
        private readonly IRoleRepository _repo;
        private readonly abcContext _context;
        public RoleController(IRoleRepository repo, abcContext context)
        {
            _repo = repo;
            _context = context;
        }
       
        public IActionResult ListRole(int? page)
        {
            var roles = _context.Roles.ToList();
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(roles.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult Search(string searchString, int? page)
        {
         
            var roles = _context.Roles.ToList();
            ViewBag.SearchString = searchString ?? String.Empty;
            if (!string.IsNullOrEmpty(searchString))
            {
                roles = roles.Where(r => r.RoleName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListRole", roles.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(Role role)
        {
            
            if (ModelState.IsValid)
            {
                if (_repo.GetAll().Any(p => p.RoleName.Equals(role.RoleName)))
                {
                    ModelState.AddModelError("RoleName", "A role with the same title already exists.");
                    return View(role);
                }
                try
                {
                    _repo.Add(role);
                    _repo.Save();
                    return RedirectToAction(nameof(ListRole));
                }
                catch
                {

                }
            }
           
            return View(role);
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id.HasValue)
            {
                var role = _repo.Find(id.Value);
                if (role != null)
                {
                    return View(role);
                }
            }
            return RedirectToAction(nameof(ListRole));
        }
        [HttpPost]
        public ActionResult Edit(int? id, Role role)
        {
            if (ModelState.IsValid)
            {
                if (id != role.RoleId)
                {
                    return NotFound();
                }
                try
                {
                    _repo.Update(role);
                    _repo.Save();
                    return RedirectToAction(nameof(ListRole));
                }
                catch
                {

                }
            }
           
            return View(role);
        }
        [HttpPost]
        public IActionResult UpdateStatus(int id)
        {
            var role = _context.Roles.Find(id);
            if (role != null)
            {
                role.Status = !role.Status;
                _context.SaveChanges();
            }
            return RedirectToAction("ListRole");
        }
       
        public IActionResult SortByName(string sortOrder, int? page)
        {
            ViewData["SortOrder"] = sortOrder;

            var roles = _context.Roles.ToList();

            switch (sortOrder)
            {
                case "asc":
                    roles = roles.OrderBy(r => r.RoleName).ToList();
                    break;
                case "desc":
                    roles = roles.OrderByDescending(r => r.RoleName).ToList();
                    break;
                default:
                   
                    roles = roles.OrderBy(r => r.RoleName).ToList();
                    break;
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListRole", roles.ToPagedList(pageNumber, pageSize));
        }
        public IActionResult FilterByStatus(bool? status,int? page)
        {
            var roles = _context.Roles.ToList();

            if (status.HasValue)
            {
                roles = roles.Where(r => r.Status == status.Value).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View("ListRole", roles.ToPagedList(pageNumber, pageSize));
        }
    }
}
