﻿using System;
using System.Collections.Generic;
using System.Linq;
using RestWithASPNETU.Model;
using RestWithASPNETU.Model.Context;

namespace RestWithASPNETU.Repository.Implementattions
{
    public class PersonRepositoryImpl : IPersonRepository
    {
        public MySQLContext _context;

        public PersonRepositoryImpl(MySQLContext context)
        {
            _context = context;
        }
            
        private volatile int count;

        // Metodo responsável por criar uma nova pessoa
        // nesse momento adicionamos o objeto ao contexto
        // e finalmente salvamos as mudanças no contexto
        // na base de dados
        public Person Create(Person person)
        {
            try
            {
                _context.Add(person);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return person;
        }


        // Método responsável por deletar
        // uma pessoa a partir de um ID
        public void Delete(long id)
        {
            var result = _context.Persons.SingleOrDefault(p => p.Id.Equals(id));
            try
            {
                if(result != null ) _context.Persons.Remove(result);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        // Método responsável por retornar todas as pessoas
        public List<Person> FindAll()
        {
            return _context.Persons.ToList();
        }


        // Método responsável por retornar uma pessoa
        public Person FindById(long id)
        {
            return _context.Persons.SingleOrDefault(p => p.Id.Equals(id));
           
        }

        // Método responsável por atualizar uma pessoa
        public Person Update(Person person)
        {
            // Verificamos se a pessoa existe na base
            // Se não existir retornamos uma instancia vazia de pessoa
            if (!Exist(person.Id)) return null;


            // Pega o estado atual do registro no banco
            // seta as alterações e salva
            var result = _context.Persons.SingleOrDefault(p => p.Id.Equals(person.Id));
            try
            {
                _context.Entry(result).CurrentValues.SetValues(person);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return person;
        }

        public bool Exist(long? id)
        {
            return _context.Persons.Any(p => p.Id.Equals(id));
        }
    }
}
