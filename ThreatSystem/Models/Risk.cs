using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models
{
    public class Risk
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int MinValue { get; set; }
        public int MaxValue { get; set; }
        public string Color { get; set; }
    }
}
