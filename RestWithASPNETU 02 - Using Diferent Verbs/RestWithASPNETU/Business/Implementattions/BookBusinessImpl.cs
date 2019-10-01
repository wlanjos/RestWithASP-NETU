using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestWithASPNETU.Model;
using RestWithASPNETU.Repository.Generic;

namespace RestWithASPNETU.Business.Implementattions
{
    public class BookBusinessImpl : IBookBusiness
    {
        private IRepository<BookVO> _repository;

        public BookBusinessImpl(IRepository<BookVO> repository)
        {
            _repository = repository;
        }


        public BookVO Create(BookVO book)
        {
            return _repository.Create(book);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

        public List<BookVO> FindAll()
        {
            return _repository.FindAll();
        }

        public BookVO FindById(long id)
        {
            return _repository.FindById(id);
        }

        public BookVO Update(BookVO book)
        {
            return _repository.Update(book);
        }
    }
}
