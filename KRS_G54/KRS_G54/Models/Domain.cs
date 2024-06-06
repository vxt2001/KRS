using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class Domain
    {
        public Domain()
        {
            DomainTypes = new HashSet<DomainType>();
            ExamConfigs = new HashSet<ExamConfig>();
            Knowledges = new HashSet<Knowledge>();
        }

        public int DomainId { get; set; }
        public string? DomainName { get; set; }

        public virtual ICollection<DomainType> DomainTypes { get; set; }
        public virtual ICollection<ExamConfig> ExamConfigs { get; set; }
        public virtual ICollection<Knowledge> Knowledges { get; set; }
    }
}
