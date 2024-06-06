using KRS_G54.Models;

namespace KRS_G54.Filters
{
    public class AdminRoleAttribute : CheckRoleAttribute
    {
        public AdminRoleAttribute() : base()
        {
            AllowedRoles = new string[] { "Admin" };
        }
    }
}
