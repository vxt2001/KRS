using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Flashcard
    {
        public Flashcard()
        {
            Knowledges = new HashSet<Knowledge>();
        }

        public int FlashcardId { get; set; }
        public string? FlashcardName { get; set; }
        public int? SubjectId { get; set; }
        public string? Description { get; set; }
        public int? UserId { get; set; }

        public virtual Subject? Subject { get; set; }
        public virtual Account? User { get; set; }
        public virtual ICollection<Knowledge> Knowledges { get; set; }
    }
}
