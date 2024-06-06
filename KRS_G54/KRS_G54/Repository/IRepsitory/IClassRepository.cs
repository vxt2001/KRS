using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;

namespace KRS_G54.Repository.IRepsitory
{
	public interface IClassRepository : IGenericRepository<Class>
	{
		void AddUserToClass(int? classId,int? accountId, bool IsActive);
    }
}
