namespace KRS_G54.Filters
{
	public class StudentRoleAttribute : CheckRoleAttribute
	{
		public StudentRoleAttribute() : base()
		{
			AllowedRoles = new string[] { "Student" };
		}
	}
}
