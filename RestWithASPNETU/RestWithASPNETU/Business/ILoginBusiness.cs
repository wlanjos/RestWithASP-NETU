using RestWithASPNETU.Data.VO;

namespace RestWithASPNETU.Business
{
    public interface ILoginBusiness
    {
        object FindByLogin(UserVO user);

       

    }
}
