using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RestWithASPNETU.Business;
using RestWithASPNETU.Data.VO;
using Tapioca.HATEOAS;
using Swashbuckle;
using Swashbuckle.AspNetCore.SwaggerGen;
using Microsoft.AspNetCore.Authorization;

namespace RestWithASPNETU.Controllers
{


    [ApiVersion("1")]
    [ApiController]
    [Route("api/[controller]/v{version:apiVersion}")]
    public class PersonsController : ControllerBase
    {
       
        private IPersonBusiness _personBusiness;
               
        public PersonsController(IPersonBusiness personBusiness)
        { 
            _personBusiness = personBusiness;
        }

        
        [HttpGet]
        [ProducesResponseType(200, Type = typeof(List<PersonVO>))]
        [ProducesResponseType(204)]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [Authorize("Bearer")]
        [TypeFilter(typeof(HyperMediaFilter))]
        public ActionResult Get()
        {
            return Ok(_personBusiness.FindAll());
        }

        
        [HttpGet("{id}")]
        [ProducesResponseType(200, Type = typeof(PersonVO))]
        [ProducesResponseType(204)]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [Authorize("Bearer")]
        [TypeFilter(typeof(HyperMediaFilter))]
        public ActionResult Get(int id)
        {
            var person = _personBusiness.FindById(id);
            if (person == null) return NotFound();

            return Ok(person);
        }

      
        [HttpPost]
        [ProducesResponseType(201, Type = typeof(PersonVO))]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [Authorize("Bearer")]
        [TypeFilter(typeof(HyperMediaFilter))]
        public ActionResult Post([FromBody] PersonVO person)
        {
            if (person == null) return BadRequest();

            return new ObjectResult(_personBusiness.Create(person));
        }

       
        [HttpPut("{id}")]
        [ProducesResponseType(202, Type = typeof(PersonVO))]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [Authorize("Bearer")]
        [TypeFilter(typeof(HyperMediaFilter))]
        public ActionResult Put(int id, [FromBody] PersonVO person)
        {
            if (person == null) return BadRequest();
            var updatePerson = _personBusiness.Update(person);
            if (updatePerson == null) return BadRequest();
            return new ObjectResult(updatePerson);

        }

  
        [HttpDelete("{id}")]
        [ProducesResponseType(202, Type = typeof(PersonVO))]
        [ProducesResponseType(400)]
        [ProducesResponseType(401)]
        [Authorize("Bearer")]
        [TypeFilter(typeof(HyperMediaFilter))]
        public ActionResult Delete(int id)
        {
            _personBusiness.Delete(id);
            return NoContent();
        }
    }
}
