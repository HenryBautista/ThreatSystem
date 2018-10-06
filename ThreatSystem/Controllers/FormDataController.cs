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
                    output.Add(sum);

                }
            }
            catch (Exception ex)
            {

                return BadRequest(ex.Message);
            }

            

            return Ok(output);

            //var data = _context.Goods.Select(g => new GoodsDto
            //{
            //    Id = g.Id,
            //    Name = g.Name,
            //    Description = g.Description,
            //    Threats = _context.Threats.Where(t => t.GoodsId == g.Id).ToList()
            //}).ToList();
   
            //var appreciation = _context.Appreciation.ToList();

            //int sum = 0;
            //int sum_app = 0;
            //int n_app = 0;
            //int sum_deg = 0;
            //int n_deg = 0;
            //int sum_int = 0;
            //int n_int = 0;
            //int sum_conf = 0;
            //int n_conf = 0;
            //int sum_aut = 0;
            //int n_aut = 0;
            //int sum_tra = 0;
            //int n_tra = 0;
            //try
            //{
            //    string id = "";
            //    int value;
                
            //    foreach (GoodsDto good in data)
            //    {
            //        foreach (Threat threat in good.Threats)
            //        {
            //            foreach (Appreciation app in appreciation)
            //            {
            //                id = threat.Id + "" + app.Id;

            //                if (obj.parent_id[int.Parse(id)] != null)
            //                {
            //                    value = obj.parent_id[int.Parse(id)].value;

            //                    switch (app.Id)
            //                    {
            //                        case 1:
            //                            sum_app += value;
            //                            n_app++;
            //                            break;
            //                        case 2:
            //                            sum_deg += value;
            //                            n_deg++;
            //                            break;
            //                        case 3:
            //                            sum_int += value;
            //                            n_int++;
            //                            break;
            //                        case 4:
            //                            sum_conf += value;
            //                            n_conf++;
            //                            break;
            //                        case 5:
            //                            sum_aut += value;
            //                            n_aut++;
            //                            break;
            //                        case 6:
            //                            sum_tra += value;
            //                            n_tra++;
            //                            break;
            //                        default:
            //                            break;
            //                    }

            //                }
            //            }
            //        }
            //    }

            //}
            //catch (Exception ex)
            //{
                
            //}
            ////Calculamos los promedios
            //Average avg = AverageService.GetAverage(sum_app, sum_deg, sum_int, sum_conf, sum_aut, sum_tra,
            //                            n_app, n_deg, n_int, n_conf, n_aut, n_tra);

            //return Ok(avg);
        }

        
    }
}