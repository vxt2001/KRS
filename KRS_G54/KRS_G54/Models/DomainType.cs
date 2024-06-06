using System;
using System.Collections.Generic;

namespace KRS_G54.Models
{
    public partial class DomainType
    {
        public int TypeId { get; set; }
        public string? TypeName { get; set; }
        public int? DomainId { get; set; }

        public virtual Domain? Domain { get; set; }
    }
}
