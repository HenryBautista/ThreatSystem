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
}