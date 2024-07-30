using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Systweak.Models;

namespace Systweak.Models
{
    public class MyDbContext : DbContext
    {
        public MyDbContext() : base("name=MyDbContext") { }

        public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}