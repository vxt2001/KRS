using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class UserExam
    {
        public UserExam()
        {
            ExamResultReviews = new HashSet<ExamResultReview>();
            ExamResults = new HashSet<ExamResult>();
            UserQuestions = new HashSet<UserQuestion>();
        }

        public int UserId { get; set; }
        public int? QuestionCount { get; set; }
        public string? ExamName { get; set; }
        public int Ueid { get; set; }

        public virtual Account User { get; set; } = null!;
        public virtual ICollection<ExamResultReview> ExamResultReviews { get; set; }
        public virtual ICollection<ExamResult> ExamResults { get; set; }
        public virtual ICollection<UserQuestion> UserQuestions { get; set; }
    }
}
