﻿using RestWithASPNETU.Model.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Tapioca.HATEOAS;

namespace RestWithASPNETU.Data.VO
{
    public class PersonVO : ISupportsHyperMedia
    {
        public long Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; } 
        public string Address { get; set; }
        public string Gender { get; set; }


        public List<HyperMediaLink> Links { get; set; } = new List<HyperMediaLink>();
    }
}
