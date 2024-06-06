using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

namespace KRS_G54.Models
{
    public partial class Class
    {
        public Class()
        {
            ClassUsers = new HashSet<ClassUser>();
            Exams = new HashSet<Exam>();
        }

        public int ClassId { get; set; }
        [Required(ErrorMessage = "Class name is required")]
        [RegularExpression(@"^[A-Z]{2}\d{4}$", ErrorMessage = "Class name must be in the format of 2 uppercase letters followed by 4 digits. For example: SE1620.")]

        public string ClassName { get; set; } = null!;
        public int SubjectId { get; set; }
        public int? Capacity { get; set; }
        public bool? Status { get; set; }
        public DateTime? CreateDate { get; set; }
        public int? SemesterId { get; set; }
        public int? CreatedBy { get; set; }
        public int? ManagedBy { get; set; }
        public string? Description { get; set; }
        public string? SubjectCode { get; set; }

        public virtual Semester? Semester { get; set; }
        public virtual Subject Subject { get; set; } = null!;
        public virtual ICollection<ClassUser> ClassUsers { get; set; }
        public virtual ICollection<Exam> Exams { get; set; }
    }
}
