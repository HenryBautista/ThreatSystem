using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ThreatSystem.Models;
using ThreatSystem.Persistence;
using ThreatSystem.Models.Transfrom;

namespace ThreatSystem.Controllers
{
    [Produces("application/json")]
    [Route("api/IncidentsTypes")]
    public class IncidentsTypesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public IncidentsTypesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Incidents
        [HttpGet]
        public IEnumerable<IncidenceType> GetIncidents()
        {
            return _context.IncidentsTypes;
        }

        // GET: api/Incidents
        [HttpGet]
        [Route("complete")]
        public  IEnumerable<IncidenceTypeDto> GetComplete()
        {
            var types =  _context.IncidentsTypes.Select(t => new IncidenceTypeDto { Id = t.Id, Name = t.Name
                            , Incidents = _context.Incidents.Where(i => i.IncidenceTypeId == t.Id).ToList()});
            return types;
        }

        // GET: api/Incidents/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetIncidence([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var incidence = await _context.IncidentsTypes.SingleOrDefaultAsync(m => m.Id == id);

            if (incidence == null)
            {
                return NotFound();
            }

            return Ok(incidence);
        }


    }
}