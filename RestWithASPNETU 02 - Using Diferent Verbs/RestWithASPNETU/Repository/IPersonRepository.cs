﻿using RestWithASPNETU.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestWithASPNETU.Repository
{
    public interface IPersonRepository
    {
        Person Create(Person person);
        Person FindById(long id);
        List<Person> FindAll();
        Person Update(Person person);
        void Delete(long id);

        bool Exist(long? id);
    }
}
