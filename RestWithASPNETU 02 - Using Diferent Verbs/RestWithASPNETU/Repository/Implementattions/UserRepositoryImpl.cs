using System;
using System.Collections.Generic;
using System.Linq;
using RestWithASPNETU.Model;
using RestWithASPNETU.Model.Context;

namespace RestWithASPNETU.Repository.Implementattions
{
    public class UserRepositoryImpl : IUserRepository
    {
        public readonly MySQLContext _context;
        //private volatile int count;

        public UserRepositoryImpl(MySQLContext context)
        {
            _context = context;
        }
            

  
        public User FindByLogin(string login)
        {
            return _context.Users.SingleOrDefault(u => u.Login.Equals(login));
           
        }
        
        
       
    }
}
