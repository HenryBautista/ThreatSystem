using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ThreatSystem.Models;
using ThreatSystem.Models.Helpers;
using ThreatSystem.Persistence;

namespace ThreatSystem.Services
{
    public static class RiskService
    {
        private static readonly ApplicationDbContext _context;

        internal static void GetRisk(AveragePerType sum)
        {

            sum.risk_prob = CalculateRisk(sum.avg_prob);
            sum.risk_deg = CalculateRisk(sum.avg_deg);
            sum.risk_int = CalculateRisk(sum.avg_int);

        }

        internal static Risk CalculateRisk(double avg) {

            Risk risks = _context.Risks.Where(r => avg >= r.MinValue  && avg <= r.MaxValue).FirstOrDefault();
            return risks;
        }
    }
}
