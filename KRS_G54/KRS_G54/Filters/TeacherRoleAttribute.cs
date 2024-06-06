namespace KRS_G54.Filters
{
	public class TeacherRoleAttribute : CheckRoleAttribute
	{
		public TeacherRoleAttribute() : base()
		{
			AllowedRoles = new string[] { "Teacher" };
		}
	}
}
