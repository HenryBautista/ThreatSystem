using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ThreatSystem.Models;
using ThreatSystem.Models.Transform;
using ThreatSystem.Persistence;
using ThreatSystem.Services;
using ThreatSystem.Models.Helpers;

namespace ThreatSystem.Controllers
{
    [Produces("application/json")]
    [Route("api/formdata")]
    public class FormDataController : Controller
    {
        private readonly ApplicationDbContext _context;

        public FormDataController(ApplicationDbContext context)
        {
            _context = context;
        }

        // POST: api/Appreciations
        [HttpPost]
        public async Task<IActionResult> PostFormData([FromBody] FormDataTypeDto obj)
        {


            var types = _context.IncidentsTypes;

            List<AveragePerType> output = new List<AveragePerType>();

            try
            {
                foreach (var type in types)
                {
                    AveragePerType sum = new AveragePerType();
                    sum.id = type.Id;
                    sum.name = type.Name;
                    foreach (var inciType in obj.incidence)
                    {
                        var incidence = _context.Incidents.Where(i => i.Id == inciType.id).FirstOrDefault();
                        if (incidence != null)
                        {
                            if (incidence.IncidenceTypeId == type.Id)
                            {
                                sum.count_prob += inciType.c_prob;
                                sum.count_deg += inciType.c_deg;
                                sum.count_int += inciType.c_inte;

                                sum.sum_prob += inciType.prob;
                                sum.sum_deg += inciType.deg;
                                sum.sum_int += inciType.inte;
                            }

                        }
                    }
                    AverageService.GetAverage(sum);

                    sum.risk_prob = CalculateRisk(sum.avg_prob);
                    sum.risk_deg = CalculateRisk(sum.avg_deg);
                    sum.risk_int = CalculateRisk(sum.avg_int);

                    output.Add(sum);

                }
            }
            catch (Exception ex)
            {

                return BadRequest(ex.Message);
            }

            

            return Ok(output);

        }

        public Risk CalculateRisk(double avg)
        {

            Risk risks = _context.Risks.Where(r => avg >= r.MinValue && avg <= r.MaxValue).FirstOrDefault();
            return risks;
        }


    }
}