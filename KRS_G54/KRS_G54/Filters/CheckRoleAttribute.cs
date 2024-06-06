using Microsoft.AspNetCore.Mvc.Filters;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using KRS_G54.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Http;
namespace KRS_G54.Filters
{
    public class CheckRoleAttribute : ActionFilterAttribute
    {
        public string[] AllowedRoles { get; set; }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var httpContextAccessor = filterContext.HttpContext.RequestServices.GetService<IHttpContextAccessor>();
            var _context = httpContextAccessor.HttpContext.RequestServices.GetService<abcContext>();

            if (!string.IsNullOrEmpty(filterContext.HttpContext.Session.GetString("userName")))
            {
               
                string userName = filterContext.HttpContext.Session.GetString("userName");

                string userRole = GetUserRole(userName, _context);

                if (!AllowedRoles.Contains(userRole))
                {
                    filterContext.Result = new RedirectToRouteResult(
                        new RouteValueDictionary
                        {
                    { "controller", "User" },
                    { "action", "Login" },
                     { "area", "" }
                        }
                    );
                }
            }
            else
            {
                filterContext.Result = new RedirectToRouteResult(
                    new RouteValueDictionary
                    {
                { "controller", "User" },
                { "action", "Login" },
                { "area", "" }
                    }
                );
            }
        }

        private string GetUserRole(string userName, abcContext _context)
        {
      
            var user = _context.Accounts.Include(a => a.Role).FirstOrDefault(a => a.UserName == userName);

            
            return user?.Role.RoleName;
        }
    }

}
