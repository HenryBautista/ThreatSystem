using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using ThreatSystem.Models;

namespace ThreatSystem.Persistence
{
    public class ApplicationDbContext : DbContext 
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options): base(options){ }

        public DbSet<Appreciation> Appreciation { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Goods> Goods { get; set; }
        public DbSet<Measure> Measures { get; set; }
        public DbSet<Threat> Threats { get; set; }
        public DbSet<Incidence> Incidents { get; set; }
        public DbSet<IncidenceType> IncidentsTypes { get; set; }
        public DbSet<CategoryIncidence> CategoriesIncidents { get; set; }
        public DbSet<Risk> Risks { get; set; }
    }

    //public class ApplicationContextDbFactory : IDesignTimeDbContextFactory<ApplicationDbContext>
    //{
    //    ApplicationDbContext IDesignTimeDbContextFactory<ApplicationDbContext>.CreateDbContext(string[] args)
    //    {
    //        IConfigurationRoot configuration = new ConfigurationBuilder()
    //            .SetBasePath(Directory.GetCurrentDirectory())
    //            .AddJsonFile("appsettings.json")
    //            .Build();

    //        var builder = new DbContextOptionsBuilder<ApplicationDbContext>();

    //        var connectionString = configuration.GetConnectionString("MyWebApiConnection");

    //        builder.UseNpgsql(connectionString);

    //        return new ApplicationDbContext(builder.Options);
    //    }
    //}
}
