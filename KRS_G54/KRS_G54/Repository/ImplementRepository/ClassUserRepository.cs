using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;
using KRS_G54.Repository.IRepsitory;

namespace KRS_G54.Repository.ImplementRepository
{
    public class ClassUserRepository : GenericRepository<ClassUser>, IClassUserRepository
    {
        public ClassUserRepository(abcContext context) : base(context)
        {
        }

        public int CountUserByClassId(int Id)
        {
            return context.ClassUsers.Count(x => x.ClassId == Id);
        }
    }
}
