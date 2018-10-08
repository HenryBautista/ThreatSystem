using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class User
    {   
        [Key]
        public int Id { get; set; }
        [MaxLength(30)]
        public string Email { get; set; }
        [MaxLength(15)]
        public string Password { get; set; }
    }
}
