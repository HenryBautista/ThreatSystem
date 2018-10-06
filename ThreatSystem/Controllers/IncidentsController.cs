using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ThreatSystem.Models;
using ThreatSystem.Persistence;

namespace ThreatSystem.Controllers
{
    [Produces("application/json")]
    [Route("api/Incidents")]
    public class IncidentsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public IncidentsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Incidents
        [HttpGet]
        public IEnumerable<Incidence> GetIncidents()
        {
            return _context.Incidents;
        }

        // GET: api/Incidents/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetIncidence([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var incidence = await _context.Incidents.SingleOrDefaultAsync(m => m.Id == id);

            if (incidence == null)
            {
                return NotFound();
            }

            return Ok(incidence);
        }


    }
}