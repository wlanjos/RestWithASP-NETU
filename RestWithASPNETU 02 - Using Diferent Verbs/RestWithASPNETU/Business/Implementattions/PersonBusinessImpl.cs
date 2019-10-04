using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using RestWithASPNETU.Data.Converters;
using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using RestWithASPNETU.Model.Context;
using RestWithASPNETU.Repository;
using RestWithASPNETU.Repository.Generic;

namespace RestWithASPNETU.Business.Implementattions
{
    public class PersonBusinessImpl : IPersonBusiness
    {
        public IRepository<Person> _repository;

        public readonly PersonConverter _converter;

        public PersonBusinessImpl(IRepository<Person> repository)
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

        public bool Exists(long id)
        {
            return _repository.Exists(id);
        }

    }
}
