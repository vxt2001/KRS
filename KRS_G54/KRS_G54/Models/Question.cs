using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Question
    {
        public int ExamId { get; set; }
        public int ExamKnowledgeId { get; set; }
        public int QuestionId { get; set; }

        public virtual Exam Exam { get; set; } = null!;
        public virtual ExamKnowledge ExamKnowledge { get; set; } = null!;
    }
}
