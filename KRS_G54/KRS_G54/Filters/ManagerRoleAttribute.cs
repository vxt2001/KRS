namespace KRS_G54.Filters
{
    public class ManagerRoleAttribute : CheckRoleAttribute
    {
        public ManagerRoleAttribute() : base()
        {
            AllowedRoles = new string[] { "Manager" };
        }
    }
}
