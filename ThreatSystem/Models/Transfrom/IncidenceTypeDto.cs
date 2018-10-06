using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models.Transfrom
{
    public class IncidenceTypeDto
    {
        public int Id { get; set; }
        [MaxLength(150)]
        public string Name { get; set; }
        public List<Incidence> Incidents { get; set; }
    }
}
