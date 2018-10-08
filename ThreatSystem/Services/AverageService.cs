using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ThreatSystem.Models;
using ThreatSystem.Models.Helpers;

namespace ThreatSystem.Services
{
    public static class AverageService
    {
        internal static Average GetAverage(int sum_app, int sum_deg, int sum_int, int sum_conf, int sum_aut, int sum_tra, int n_app, int n_deg, int n_int, int n_conf, int n_aut, int n_tra)
        {
            Average avg = new Average {
                total_prop = sum_app, total_deg = sum_deg, total_int = sum_int, total_conf = sum_conf, total_auth = sum_aut, total_traz = sum_tra,
                count_prop = n_app, count_deg = n_deg, count_int = n_int, count_conf = n_conf, count_auth = n_aut, count_traz = n_tra
            };

            avg.avg_prop = computeAverage(avg.total_prop, avg.count_prop);
            avg.avg_deg = computeAverage(avg.total_deg, avg.count_deg);
            avg.avg_int = computeAverage(avg.total_int, avg.count_int);
            avg.avg_conf = computeAverage(avg.total_conf, avg.count_conf);
            avg.avg_auth = computeAverage(avg.total_auth, avg.count_auth);
            avg.avg_traz = computeAverage(avg.total_traz, avg.count_traz);

            return avg;
        }

        public static double computeAverage(int total, int count)
        {
            if (count == 0)
                return 0;

            return total/count;
        }

        internal static void GetAverage(AveragePerType sum)
        {
            sum.avg_prob = computeAverage(sum.sum_prob, sum.count_prob);
            sum.avg_deg  = computeAverage(sum.sum_deg, sum.count_deg);
            sum.avg_int = computeAverage(sum.sum_int, sum.count_int);

        }


    }


}
