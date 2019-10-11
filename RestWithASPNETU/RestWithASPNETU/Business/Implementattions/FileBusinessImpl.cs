using System.IO;
using RestWithASPNETU.Data.VO;

namespace RestWithASPNETU.Business.Implementattions
{
    public class FileBusinessImpl : IFileBusiness
    {
        public byte[] GetPDFFile()
        {
            string path = Directory.GetCurrentDirectory();
            var fulPath = path + "\\Other\\aspnet-life-cycles-events.pdf";
            return File.ReadAllBytes(fulPath);
        }
    }
}
