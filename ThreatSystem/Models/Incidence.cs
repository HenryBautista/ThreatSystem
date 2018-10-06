using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class Incidence
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(150)]
        public string Name { get; set; }
        public IncidenceType IncidenceType { get; set; }
        public int IncidenceTypeId { get; set; }
    }
}
