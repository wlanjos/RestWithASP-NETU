using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestWithASPNETU.Data.Converters;
using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using RestWithASPNETU.Repository.Generic;

namespace RestWithASPNETU.Business.Implementattions
{
    public class BookBusinessImpl : IBookBusiness
    {
        private IRepository<Book> _repository;

        private readonly BookConverter _converter;

        public BookBusinessImpl(IRepository<Book> repository)
        {
            _repository = repository;
            _converter = new BookConverter();
        }


        public BookVO Create(BookVO book)
        {
            var bookEntity = _converter.Parse(book);
            bookEntity = _repository.Create(bookEntity);
            return _converter.Parse(bookEntity);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

        public List<BookVO> FindAll()
        {
            return _converter.ParserList(_repository.FindAll());
        }

        public BookVO FindById(long id)
        {
            return _converter.Parse(_repository.FindById(id));

        }

        public BookVO Update(BookVO book)
        {
            var bookEntity = _converter.Parse(book);
            bookEntity = _repository.Update(bookEntity);
            return _converter.Parse(bookEntity);
        }
    }
}
