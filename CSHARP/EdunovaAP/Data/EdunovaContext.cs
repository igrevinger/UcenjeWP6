using EdunovaAP.Models;
using Microsoft.EntityFrameworkCore;

namespace EdunovaAP.Data
{
    public class EdunovaContext : DbContext
    {
        public EdunovaContext(DbContextOptions<EdunovaContext> options) : base(options)
        {
        }

        public DbSet<Smjer> Smjerovi { get; set; }
    }
}
