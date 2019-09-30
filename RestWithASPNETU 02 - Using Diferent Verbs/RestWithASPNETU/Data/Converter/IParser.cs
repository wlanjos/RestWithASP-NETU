using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RestWithASPNETU.Data.Converter
{
    public interface IParser<O, D>
    {
        D Parse(O orign);
        List<D> ParserList(List<O> origin);
    }
}
