using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class AppreciationDto
    {
        public int Id { get; set; }
        [MaxLength(50)]
        public string Name { get; set; }
        [MaxLength(200)]
        public string Description { get; set; }
        [MaxLength(10)]
        public string Initials { get; set; }

        public List<Measure> Measures { get; set; }

        //public Threat Threat { get; set; }
        //public int ThreatId { get; set; }
    }
}