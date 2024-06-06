using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Lesson
    {
        public Lesson()
        {
            ExamKnowledges = new HashSet<ExamKnowledge>();
            Knowledges = new HashSet<Knowledge>();
        }

        public int LessonId { get; set; }
        public string Topic { get; set; } = null!;
        public int SubjectId { get; set; }
        public double Order { get; set; }

        public virtual Subject Subject { get; set; } = null!;
        public virtual ICollection<ExamKnowledge> ExamKnowledges { get; set; }
        public virtual ICollection<Knowledge> Knowledges { get; set; }
    }
}
