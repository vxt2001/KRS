using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;

namespace KRS_G54.Repository.IRepsitory
{
    public interface IClassUserRepository:IGenericRepository<ClassUser>
    {
        int CountUserByClassId(int Id);    
    }
}
