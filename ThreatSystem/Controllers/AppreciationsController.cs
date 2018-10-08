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
    [Route("api/Appreciations")]
    public class AppreciationsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public AppreciationsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Appreciations
        [HttpGet]
        public IEnumerable<Appreciation> GetAppreciation()
        {
            return _context.Appreciation;
        }

        [HttpGet]
        [Route("complete")]
        public IEnumerable<AppreciationDto> GetComplete(){

            var list = _context.Appreciation.Select(b => new AppreciationDto{ Id = b.Id, Name = b.Name, Description = b.Description, Initials = b.Initials
                        , Measures = _context.Measures.Where(m => m.AppreciationId == b.Id).OrderByDescending(o => o.value).ToList()});
            return list;
        }
        // GET: api/Appreciations/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetAppreciation([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var appreciation = await _context.Appreciation.SingleOrDefaultAsync(m => m.Id == id);

            if (appreciation == null)
            {
                return NotFound();
            }

            return Ok(appreciation);
        }

        // PUT: api/Appreciations/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAppreciation([FromRoute] int id, [FromBody] Appreciation appreciation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != appreciation.Id)
            {
                return BadRequest();
            }

            _context.Entry(appreciation).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AppreciationExists(id))
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

        // POST: api/Appreciations
        [HttpPost]
        public async Task<IActionResult> PostAppreciation([FromBody] Appreciation appreciation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Appreciation.Add(appreciation);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetAppreciation", new { id = appreciation.Id }, appreciation);
        }

        // DELETE: api/Appreciations/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAppreciation([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var appreciation = await _context.Appreciation.SingleOrDefaultAsync(m => m.Id == id);
            if (appreciation == null)
            {
                return NotFound();
            }

            _context.Appreciation.Remove(appreciation);
            await _context.SaveChangesAsync();

            return Ok(appreciation);
        }

        private bool AppreciationExists(int id)
        {
            return _context.Appreciation.Any(e => e.Id == id);
        }
    }
}