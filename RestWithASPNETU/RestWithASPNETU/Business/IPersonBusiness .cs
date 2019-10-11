using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Tapioca.HATEOAS.Utils;

namespace RestWithASPNETU.Business
{
    public interface IPersonBusiness
    {
        PersonVO Create(PersonVO person);
        PersonVO FindById(long id);
        List<PersonVO> FindAll();
        List<PersonVO> FindByName(string firstName, string lastName);
        PersonVO Update(PersonVO person);
        void Delete(long id);
        PagedSearchDTO<PersonVO> FindWithPagedSeach(string name, string sortDirection, int pageSize, int page);


    }
}
