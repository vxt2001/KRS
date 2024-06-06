using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class ExamResult
    {
        public ExamResult()
        {
            ExamResultReviews = new HashSet<ExamResultReview>();
        }

        public int ExamResultId { get; set; }
        public int? AccountId { get; set; }
        public int? ExamId { get; set; }
        public int? UserExamId { get; set; }
        public double? Score { get; set; }
        public int? RemainingTime { get; set; }
        public DateTime? CompletionTime { get; set; }

        public virtual Account? Account { get; set; }
        public virtual Exam? Exam { get; set; }
        public virtual UserExam? UserExam { get; set; }
        public virtual ICollection<ExamResultReview> ExamResultReviews { get; set; }
    }
}
