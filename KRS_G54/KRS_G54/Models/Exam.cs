using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Exam
    {
        public Exam()
        {
            ExamResultReviews = new HashSet<ExamResultReview>();
            ExamResults = new HashSet<ExamResult>();
            Questions = new HashSet<Question>();
        }

        public int ExamId { get; set; }
        public int? ClassId { get; set; }
        public string? ExamName { get; set; }
        public string? Description { get; set; }
        public bool? IsPractice { get; set; }
        public int? SubjectId { get; set; }
        public int? QuestionCount { get; set; }
        public int? TimeCount { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? EndDate { get; set; }
        public bool? IsActive { get; set; }

        public virtual Class? Class { get; set; }
        public virtual Subject? Subject { get; set; }
        public virtual ICollection<ExamResultReview> ExamResultReviews { get; set; }
        public virtual ICollection<ExamResult> ExamResults { get; set; }
        public virtual ICollection<Question> Questions { get; set; }
    }
}
