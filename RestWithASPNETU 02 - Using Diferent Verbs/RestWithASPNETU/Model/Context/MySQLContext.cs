using Microsoft.EntityFrameworkCore;
using RestWithASPNETU.Data.VO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestWithASPNETU.Model.Context
{
    public class MySQLContext: DbContext
    {
        public MySQLContext()
        {
                
        }

        public MySQLContext(DbContextOptions<MySQLContext> options): base(options)
        { 
                
        }

        public DbSet<Person> Persons { get; set; }
        public DbSet<Book> Books { get; set; }
    }
}
