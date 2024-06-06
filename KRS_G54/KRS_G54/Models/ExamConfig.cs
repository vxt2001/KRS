using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class ExamConfig
    {
        public int ExamConfigId { get; set; }
        public int? ExamId { get; set; }
        public int? QuestionCount { get; set; }
        public int? TimeCount { get; set; }

        public virtual Exam? Exam { get; set; }
    }
}
