using KRS_G54.Models;
using KRS_G54.Repository.GenericRepository;
using KRS_G54.Repository.IRepsitory;

namespace KRS_G54.Repository.ImplementRepository
{
    public class AccountRepository : GenericRepository<Account>, IAccountRepository
    {
        public AccountRepository(abcContext context) : base(context)
        {
        }
        public string GetUserNameById(int? id)
        {
            var subject = context.Accounts.FirstOrDefault(s => s.AccountId == id);
            return subject
                != null
                ? subject.UserName
                : throw new ArgumentException($"Account with ID {id} not found");
        }
    }
}
