using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

namespace KRS_G54.Models
{
    public partial class Subject
    {
        public Subject()
        {
            Classes = new HashSet<Class>();
            ExamKnowledges = new HashSet<ExamKnowledge>();
            Exams = new HashSet<Exam>();
            Flashcards = new HashSet<Flashcard>();
            Knowledges = new HashSet<Knowledge>();
            Lessons = new HashSet<Lesson>();
        }

        public int SubjectId { get; set; }
        [StringLength(100, MinimumLength = 10, ErrorMessage = "Subject name must be at least 10 characters long")]
        public string SubjectName { get; set; } = null!;
        public int? AccountId { get; set; }
        [Required(ErrorMessage = "Subject code is required")]
        [StringLength(6, ErrorMessage = "Subject code must have exactly 6 characters")]
        [RegularExpression(@"^[A-Z]{3}\d{3}$", ErrorMessage = "Subject code must be in the format of 3 uppercase letters followed by 3 digits. Ex:VNR202")]

        public string SubjectCode { get; set; } = null!;
        public bool? Status { get; set; }
        public string? Description { get; set; }

        public virtual Account? Account { get; set; }
        public virtual ICollection<Class> Classes { get; set; }
        public virtual ICollection<ExamKnowledge> ExamKnowledges { get; set; }
        public virtual ICollection<Exam> Exams { get; set; }
        public virtual ICollection<Flashcard> Flashcards { get; set; }
        public virtual ICollection<Knowledge> Knowledges { get; set; }
        public virtual ICollection<Lesson> Lessons { get; set; }
    }
}
