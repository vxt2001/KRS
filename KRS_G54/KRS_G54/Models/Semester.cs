using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

namespace KRS_G54.Models
{
    public partial class Semester
    {
        public Semester()
        {
            Classes = new HashSet<Class>();
        }

        public int SemesterId { get; set; }
        [Required(ErrorMessage = "Semester name is required")]
        [RegularExpression(@"^(SPRING|SUMMER|AUTUMN|WINTER)\d{4}$", ErrorMessage = "Semester name must be in the format of a season name (in uppercase) followed by a 4-digit year. For example: SUMMER2024.")]

        public string? SemesterName { get; set; }

        public virtual ICollection<Class> Classes { get; set; }
    }
}
