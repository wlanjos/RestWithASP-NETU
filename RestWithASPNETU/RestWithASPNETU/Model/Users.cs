using System.ComponentModel.DataAnnotations.Schema;

namespace RestWithASPNETU.Model
{

    //contrato entre atribustos
    //e a estrutura da tabela
    //[DataContract]
    [Table("users")]
    public class User
    {
        public long Id { get; set; }
        public string Login { get; set; }
        public string AccessKey { get; set; }
    }
}
