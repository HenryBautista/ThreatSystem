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
    [Route("api/Threats")]
    public class ThreatsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ThreatsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Threats
        [HttpGet]
        public IEnumerable<Threat> GetThreats()
        {
            return _context.Threats;
        }

        // GET: api/Threats/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetThreat([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var threat = await _context.Threats.SingleOrDefaultAsync(m => m.Id == id);

            if (threat == null)
            {
                return NotFound();
            }

            return Ok(threat);
        }

        // PUT: api/Threats/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutThreat([FromRoute] int id, [FromBody] Threat threat)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != threat.Id)
            {
                return BadRequest();
            }

            _context.Entry(threat).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ThreatExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Threats
        [HttpPost]
        public async Task<IActionResult> PostThreat([FromBody] Threat threat)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Threats.Add(threat);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetThreat", new { id = threat.Id }, threat);
        }

        // DELETE: api/Threats/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteThreat([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var threat = await _context.Threats.SingleOrDefaultAsync(m => m.Id == id);
            if (threat == null)
            {
                return NotFound();
            }

            _context.Threats.Remove(threat);
            await _context.SaveChangesAsync();

            return Ok(threat);
        }

        private bool ThreatExists(int id)
        {
            return _context.Threats.Any(e => e.Id == id);
        }
    }
}