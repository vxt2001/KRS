using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;
using KRS_G54.Repository.IRepsitory;

namespace KRS_G54.Repository.ImplementRepository
{
    public class SemesterRepository : GenericRepository<Semester>, ISemesterRepository
    {
        public SemesterRepository(abcContext context) : base(context)
        {
        }
        public string GetSemesterNameById(int? id)
        {
            var data = context.Semesters.FirstOrDefault(s => s.SemesterId == id);
            return data
                != null
                ? data.SemesterName
                : throw new ArgumentException($"Data with ID {id} not found");
        }
    }
}
