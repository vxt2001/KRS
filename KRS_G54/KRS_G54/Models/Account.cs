using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

namespace KRS_G54.Models
{
    public partial class Account
    {
        public Account()
        {
            ClassUsers = new HashSet<ClassUser>();
            ExamResults = new HashSet<ExamResult>();
            Flashcards = new HashSet<Flashcard>();
            Subjects = new HashSet<Subject>();
            UserExams = new HashSet<UserExam>();
            UserQuestions = new HashSet<UserQuestion>();
        }

        public int AccountId { get; set; }
        public string UserName { get; set; } = null!;
        [Required(ErrorMessage = "Password is required")]
        [MinLength(4, ErrorMessage = "Password must be at least 4 characters long")]
        [RegularExpression(@"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{4,}$", ErrorMessage = "Password must contain both letters and numbers")]
        public string Password { get; set; } = null!;
        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Invalid email address")]
        public string Email { get; set; } = null!;
        public bool? IsDone { get; set; }
        public DateTime? CreateDate { get; set; }
        public int? ProgressId { get; set; }
        public bool Status { get; set; }
        public string? ProfilePicture { get; set; }
        [Required(ErrorMessage = "Full name is required")]
        public int RoleId { get; set; }
        public string FullName { get; set; } = null!;
        [Required(ErrorMessage = "Phone number is required")]
        [RegularExpression(@"^(03[2-9]|05[6-9]|07[0|6-9]|08[1-5]|09[0-9])+([0-9]{7})\b", ErrorMessage = "Invalid phone number")]
        public string PhoneNumber { get; set; } = null!;
        public string? Description { get; set; }

        public virtual Role Role { get; set; } = null!;
        public virtual ICollection<ClassUser> ClassUsers { get; set; }
        public virtual ICollection<ExamResult> ExamResults { get; set; }
        public virtual ICollection<Flashcard> Flashcards { get; set; }
        public virtual ICollection<Subject> Subjects { get; set; }
        public virtual ICollection<UserExam> UserExams { get; set; }
        public virtual ICollection<UserQuestion> UserQuestions { get; set; }
    }
}
