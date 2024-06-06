using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class ClassUser
    {
        public int ClassId { get; set; }
        public int AccountId { get; set; }
        public bool? IsTeacher { get; set; }
        public bool? IsActive { get; set; }

        public virtual Account Account { get; set; } = null!;
        public virtual Class Class { get; set; } = null!;
    }
}
