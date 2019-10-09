using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using RestWithASPNETU.Business;
using RestWithASPNETU.Data.VO;
using RestWithASPNETU.Model;
using Tapioca.HATEOAS;

namespace RestWithASPNETU.Controllers
{


    [ApiVersion("1")]
    [ApiController]
    [Route("api/[controller]/v{version:apiVersion}")]
    public class LoginController : Controller
    {

        private ILoginBusiness _loginBusiness;

        public LoginController(ILoginBusiness loginBusiness)
        {
            _loginBusiness = loginBusiness;
        }


        [AllowAnonymous]
        [HttpPost]
        public object Post([FromBody] UserVO user)
        {
            if (user == null) return BadRequest();

            return _loginBusiness.FindByLogin(user);
        }


       
    }
}
