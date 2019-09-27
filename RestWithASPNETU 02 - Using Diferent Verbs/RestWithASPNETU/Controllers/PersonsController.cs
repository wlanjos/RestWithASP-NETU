using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using RestWithASPNETU.Model;
using RestWithASPNETU.Business;

namespace RestWithASPNETU.Controllers
{
    /*Mapeia as requisições de http://localhost:{porta}/aui/person/
     * Por padrão o ASP.NET Core mapeia todas as classes que estendem Controller
     * Pegando a primeira parte do nome da classe em lower case [Person]Controler
     * e expoe como endipoint REST
     */ 
    
    [ApiVersion("1")]
    [ApiController]
    [Route("api/[controller]/v{version:apiVersion}")]
    public class PersonsController : ControllerBase
    {
        //Declaração do serviço usado
        private IPersonBusiness _personBusiness;

        /*Injeção de uma instancia de IPersonService ao Criar
         uma instancia de PersonController */
        public PersonsController(IPersonBusiness personBusiness)
        {
            _personBusiness = personBusiness;
        }
        
        //Mapea as requisições Get para http://localhost:{porta}/api/person
        // GET api/values
        [HttpGet]
        public ActionResult Get()
        {
            return Ok(_personBusiness.FindAll());
        }

        //Mapeia as requisições GET para http://localhost:{porta}/api/person/{id}
        //recebendo um ID como no Path da requisição
        //Get com parâmetros para o FindById --> Busca Por ID
        [HttpGet("{id}")]
        public ActionResult Get(int id)
        {
            var person = _personBusiness.FindById(id);
            if (person == null) return NotFound();
            
            return Ok(person);
        }

        //Mapeia as requisições POST para http://localhost:{porta}/api/person/
        //O [FromBody] consome o Objeto JSON enviado no corpo da requisição
        [HttpPost]
        public ActionResult Post([FromBody] Person person)
        {
            if (person == null) return BadRequest();

            return new ObjectResult(_personBusiness.Create(person));
        }

        //Mapeia as requisições PUT para http://localhost:{porta}/api/person/
        //O [FromBody] consome o Objeto JSON enviado no corpo da requisição
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Person person)
        {
            if (person == null) return BadRequest();

            return new ObjectResult(_personBusiness.Update(person));
        }

        //Mapeia as requisições DELETE para http://localhost:{porta}/api/person/{id}
        //recebendo um ID como no Path da requisição
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            _personBusiness.Delete(id);
            return NoContent();
        }
    }
}
