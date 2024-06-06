using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

namespace KRS_G54.Models
{
    public partial class Role
    {
        public Role()
        {
            Accounts = new HashSet<Account>();
        }

        public int RoleId { get; set; }
        [Required(ErrorMessage = "Role name is required")]
        [MinLength(5, ErrorMessage = "Role name must be greater than 4 characters")]

        public string RoleName { get; set; } = null!;
        public string? Description { get; set; }
        public bool Status { get; set; }

        public virtual ICollection<Account> Accounts { get; set; }
    }
}
