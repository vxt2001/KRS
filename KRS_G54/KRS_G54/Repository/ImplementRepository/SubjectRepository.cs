using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;
using KRS_G54.Repository.IRepsitory;

namespace KRS_G54.Repository.ImplementRepository
{

    public class SubjectRepository : GenericRepository<Subject>, ISubjectRepository
    {
        public SubjectRepository(abcContext context) : base(context)
        {
        }
        public string GetSubjectNameById(int? id)
        {
            var subject = context.Subjects.FirstOrDefault(s => s.SubjectId == id);
            return subject 
                !=null 
                ? subject.SubjectName 
                : throw new ArgumentException($"Subject with ID {id} not found");
        }
    }
}
