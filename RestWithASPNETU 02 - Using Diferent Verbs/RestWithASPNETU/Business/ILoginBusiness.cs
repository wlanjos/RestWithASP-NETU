using RestWithASPNETU.Model;

namespace RestWithASPNETU.Business
{
    public interface ILoginBusiness
    {
        object FindByLogin(User user);

       

    }
}
