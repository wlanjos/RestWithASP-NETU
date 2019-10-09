using Microsoft.EntityFrameworkCore;
using RestWithASPNETU.Model.Base;
using RestWithASPNETU.Model.Context;
using System;
using System.Collections.Generic;
using System.Linq;

namespace RestWithASPNETU.Repository.Generic
{
    public class GenericRepository<T> : IRepository<T> where T : BaseEntity
    {
        protected readonly MySQLContext _context;
        private DbSet<T> dataSet;

        public GenericRepository(MySQLContext context)
        {
            _context = context;
            dataSet = context.Set<T>();
        }



        public T Create(T item)
        {
            try
            {
                dataSet.Add(item);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return item;

        }

        public void Delete(long id)
        {
            var result = dataSet.SingleOrDefault(p => p.Id.Equals(id));
            try
            {
                if (result != null) dataSet.Remove(result);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public bool Exists(long? id)
        {
            return dataSet.Any(p => p.Id.Equals(id));
        }

        public List<T> FindAll()
        {
            return dataSet.ToList();
        }

        public T FindById(long id)
        {
            return dataSet.SingleOrDefault(p => p.Id.Equals(id));
        }

        public List<T> FindWithPagedSeach(string query)
        {
            return dataSet.FromSql<T>(query).ToList();
        }

        public int GetCount(string query)
        {

            var result = "";
            using (var connection = _context.Database.GetDbConnection())
            {
                connection.Open();
                using (var command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    result = command.ExecuteScalar().ToString();
                }
            }

            return Int32.Parse(result);
        }


        public T Update(T item)
        {

            // Verificamos se a pessoa existe na base
            // Se não existir retornamos uma instancia vazia de pessoa
            if (!Exists(item.Id)) return null;


            // Pega o estado atual do registro no banco
            // seta as alterações e salva
            var result = dataSet.SingleOrDefault(p => p.Id.Equals(item.Id));
            try
            {
                _context.Entry(result).CurrentValues.SetValues(item);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return result;
        }

    }
}

