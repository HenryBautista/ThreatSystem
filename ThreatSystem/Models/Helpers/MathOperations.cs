using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ThreatSystem.Models.Helpers
{
    public class MathOperations
    {
    }
    public class Average
    {
        //SUMAS TOTALES
        public int total_prop { get; set; }
        public int total_deg  { get; set; }
        public int total_int { get; set; }
        public int total_conf { get; set; }
        public int total_auth { get; set; }
        public int total_traz { get; set; }

        //CANTIDADES TOTALES
        public int count_prop { get; set; }
        public int count_deg { get; set; }
        public int count_int { get; set; }
        public int count_conf { get; set; }
        public int count_auth { get; set; }
        public int count_traz { get; set; }

        //PRMEDIOS TOTALES
        public double avg_prop { get; set; }
        public double avg_deg { get; set; }
        public double avg_int { get; set; }
        public double avg_conf { get; set; }
        public double avg_auth { get; set; }
        public double avg_traz { get; set; }
    }

    public class AveragePerType {

        public int id { get; set; }
        public string name { get; set; }

        public int count_prob { get; set; }
        public int count_deg { get; set; }
        public int count_int { get; set; }


        public int sum_prob { get; set; }
        public int sum_deg { get; set; }
        public int sum_int { get; set; }

        public double avg_prob { get; set; }
        public double avg_deg { get; set; }
        public double avg_int { get; set; }

        public Risk risk_prob { get; set; }
        public Risk risk_deg { get; set; }
        public Risk risk_int { get; set; }

        public AveragePerType()
        {
            count_prob = 0;
            count_deg = 0;
            count_int = 0;

            sum_prob = 0;
            sum_deg = 0;
            sum_int = 0;

            avg_prob = 0;
            avg_deg = 0;
            avg_int = 0;
        }

    }

}
