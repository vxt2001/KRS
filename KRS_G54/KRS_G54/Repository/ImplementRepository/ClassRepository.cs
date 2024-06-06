using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;
using KRS_G54.Repository.IRepsitory;
using Microsoft.EntityFrameworkCore;

namespace KRS_G54.Repository.ImplementRepository
{
    public class ClassRepository : GenericRepository<Class>, IClassRepository
    {
        public ClassRepository(abcContext context) : base(context)
        {
        }

        public void AddUserToClass(int? classId, int? accountId, bool isActive)
        {
            // Kiểm tra xem classId và accountId có tồn tại không
            if (classId == null || accountId == null)
            {
                throw new ArgumentNullException("classId and accountId must have values");
            }

            // Tạo một đối tượng ClassUser mới
            var classUser = new ClassUser
            {
                ClassId = classId.Value,
                AccountId = accountId.Value,
                IsActive = isActive
            };

            // Thêm ClassUser mới vào DbSet<ClassUser> trong KRSDbContext
            context.ClassUsers.Add(classUser);

            // Lưu thay đổi vào cơ sở dữ liệu
            context.SaveChanges();
        }
    }
}
