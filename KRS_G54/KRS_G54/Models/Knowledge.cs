using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Knowledge
    {
        public int KnowledgeId { get; set; }
        public int? SubjectId { get; set; }
        public string? Knowledge1 { get; set; }
        public string? Explanation { get; set; }
        public string? Answer { get; set; }
        public int? FlashcardId { get; set; }
        public int? LessonId { get; set; }

        public virtual Flashcard? Flashcard { get; set; }
        public virtual Lesson? Lesson { get; set; }
        public virtual Subject? Subject { get; set; }
    }
}
