using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class ExamResultReview
    {
        public int Id { get; set; }
        public int? ExamId { get; set; }
        public int? UeId { get; set; }
        public string? SelectedAnswerIds { get; set; }
        public string? SelectedAnswerValues { get; set; }
        public int? ExamResultId { get; set; }

        public virtual Exam? Exam { get; set; }
        public virtual ExamResult? ExamResult { get; set; }
        public virtual UserExam? Ue { get; set; }
    }
}
