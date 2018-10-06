using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class FormDataDto
    {
        public List<Measure> parent_id { get; set; }
    }
    public class FormDataTypeDto
    {
        public List<IncidenceTypeAvg> incidence { get; set; }
    }
    public class IncidenceTypeAvg
    {
        public int id { get; set; }
        public int prob { get; set; }
        public int deg { get; set; }
        public int inte { get; set; }
        public int c_prob { get; set; }
        public int c_deg { get; set; }
        public int c_inte { get; set; }
    }

}