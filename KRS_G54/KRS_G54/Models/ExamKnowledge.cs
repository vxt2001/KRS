using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class ExamKnowledge
    {
        public ExamKnowledge()
        {
            AnswerOptions = new HashSet<AnswerOption>();
            Questions = new HashSet<Question>();
            UserQuestions = new HashSet<UserQuestion>();
        }

        public int ExamKnowledgeId { get; set; }
        public int? LessonId { get; set; }
        public string? Answer { get; set; }
        public string? Knowledge { get; set; }
        public int? SubjectId { get; set; }

        public virtual Lesson? Lesson { get; set; }
        public virtual Subject? Subject { get; set; }
        public virtual ICollection<AnswerOption> AnswerOptions { get; set; }
        public virtual ICollection<Question> Questions { get; set; }
        public virtual ICollection<UserQuestion> UserQuestions { get; set; }
    }
}
