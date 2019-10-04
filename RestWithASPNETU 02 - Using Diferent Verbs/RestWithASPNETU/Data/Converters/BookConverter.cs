using RestWithASPNETU.Data.Converter;
using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestWithASPNETU.Data.Converters
{
    public class BookConverter : IParser<Book, BookVO>, IParser<BookVO, Book>
    {
        public Book Parse(BookVO orign)
        {
            if (orign == null) return new Book();
            return new Book
            {
                Id = orign.Id,
                Author = orign.Author,
                LaunchDate = orign.LaunchDate,
                Price = orign.Price,
                Title = orign.Title

            };
        }

        public BookVO Parse(Book orign)
        {
            if (orign == null) return new BookVO();
            return new BookVO
            {
                Id = orign.Id,
                Author = orign.Author,
                LaunchDate = orign.LaunchDate,
                Price = orign.Price,
                Title = orign.Title

            };
        }

        public List<Book> ParserList(List<BookVO> origin)
        {
            if (origin == null) return new List<Book>();
            return origin.Select(item => Parse(item)).ToList();
        }

        public List<BookVO> ParserList(List<Book> origin)
        {
            if (origin == null) return new List<BookVO>();
            return origin.Select(item => Parse(item)).ToList();
        }
    }
}
