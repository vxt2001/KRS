using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class UserQuestion
    {
        public int? UserId { get; set; }
        public int? Ueid { get; set; }
        public int? ExamKnowledgeId { get; set; }
        public int Uqid { get; set; }

        public virtual ExamKnowledge? ExamKnowledge { get; set; }
        public virtual UserExam? Ue { get; set; }
        public virtual Account? User { get; set; }
    }
}
