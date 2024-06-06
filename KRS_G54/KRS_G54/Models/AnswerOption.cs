using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class AnswerOption
    {
        public int AnswerOptionId { get; set; }
        public int? ExamKnowledgeId { get; set; }
        public string? AnswerOption1 { get; set; }
        public bool? IsKey { get; set; }

        public virtual ExamKnowledge? ExamKnowledge { get; set; }
    }
}
