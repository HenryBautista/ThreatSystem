using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class CategoryIncidence
    {
        [Key]
        public int Id { get; set; }

        public Category Category { get; set; }
        public int CategoryId { get; set; }

        public Incidence Incidence { get; set; }
        public int IncidenceId { get; set; }
    }
}
