using System.Collections.Generic;
using RestWithASPNETU.Data.Converters;
using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using RestWithASPNETU.Repository.Generic;
using Tapioca.HATEOAS.Utils;

namespace RestWithASPNETU.Business.Implementattions
{
    public class PersonBusinessImpl : IPersonBusiness
    {
        public IPersonRepository _repository;

        public readonly PersonConverter _converter;

        public PersonBusinessImpl(IPersonRepository repository)
        {
            _repository = repository;
            _converter = new PersonConverter();
        }

        private volatile int count;

        // Metodo responsável por criar uma nova pessoa
        // nesse momento adicionamos o objeto ao contexto
        // e finalmente salvamos as mudanças no contexto
        // na base de dados
        public PersonVO Create(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Create(personEntity);
            return _converter.Parse(personEntity);
        }

        // Método responsável por retornar uma pessoa
        public PersonVO FindById(long id)
        {
            return _converter.Parse( _repository.FindById(id));

        }

        // Método responsável por retornar todas as pessoas
        public List<PersonVO> FindAll()
        {
            return _converter.ParserList( _repository.FindAll());
        }

        public List<PersonVO> FindByName(string firstName, string lastName)
        {
            return _converter.ParserList(_repository.FindByName(firstName, lastName));
        }

        // Método responsável por atualizar uma pessoa
        public PersonVO Update(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Update(personEntity);
            return _converter.Parse(personEntity);
        }

        // Método responsável por deletar
        // uma pessoa a partir de um ID
        public void Delete(long id)
        {
            _repository.Delete(id);

        }


        public PagedSearchDTO<PersonVO> FindWithPagedSeach(string name, string sortDirection, int pageSize, int page)
        {
            page = page > 0 ? page - 1 : 0;

            string query = @"select * from Persons p where 1=1";
            if (!string.IsNullOrEmpty(name)) query = query + $" and p.FirstName like '%{name}%'";
            query = query + $" order by p.FirstName {sortDirection} limit {pageSize} offset {page}";

            string countQuery = @"select count(*) from Persons p where 1=1";
            if (!string.IsNullOrEmpty(name)) countQuery = countQuery + $" and p.FirstName like '%{name}%'";

            var persons = _converter.ParserList(_repository.FindWithPagedSeach(query));

            var totalResults = _repository.GetCount(countQuery);

            return new PagedSearchDTO<PersonVO>
            {
                CurrentPage = page,
                List = persons,
                PageSize = pageSize,
                SortDirections = sortDirection,
                TotalResults = totalResults

            };
        }



            public bool Exists(long id)
        {
            return _repository.Exists(id);
        }




    }
}
