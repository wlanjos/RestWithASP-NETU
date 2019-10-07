using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Principal;
using RestWithASPNETU.Model;
using RestWithASPNETU.Repository;
using RestWithASPNETU.Repository.Generic;
using RestWithASPNETU.Security.Configuration;

namespace RestWithASPNETU.Business.Implementattions
{
    public class LoginBusinessImpl : ILoginBusiness
    {
        private IUserRepository _repository;
        private SingningConfigurations _singningConfigurations;
        private TokenConfiguration _tokenConfiguration;

        public LoginBusinessImpl(IUserRepository repository, SingningConfigurations singningConfigurations, TokenConfiguration tokenConfiguration)
        {
            _repository = repository;
            _singningConfigurations = singningConfigurations;
            _tokenConfiguration = tokenConfiguration;
           
        }

        public object FindByLogin(User user)
        {
            bool credentialIsValid = false;
            if (user != null & !string.IsNullOrWhiteSpace(user.Login))
            {
                var baseUser = _repository.FindByLogin(user.Login);
                credentialIsValid = (baseUser != null && user.Login == baseUser.Login && user.AccessKey == baseUser.AccessKey);
            }
            if (credentialIsValid)
            {
                ClaimsIdentity identity = new ClaimsIdentity(
                    new GenericIdentity(user.Login, "Login"),
                        new[]
                        {
                            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString("N")),
                            new Claim(JwtRegisteredClaimNames.UniqueName, user.Login)
                        }
                    );

                DateTime createDate = DateTime.Now;
                DateTime expirationDate = createDate + TimeSpan.FromSeconds(_tokenConfiguration.Seconds);

                var handler = new JwtSecurityTokenHandler();
                string token = CreateToken(identity, createDate, expirationDate, handler);

                return SuccessObjetct( createDate, expirationDate,  token);
            } else
            {
                return ExceptionObject();
            }
        }

        private string CreateToken(ClaimsIdentity identity, DateTime createDate, DateTime expirationDate, JwtSecurityTokenHandler handler)
        {
            var securityToken = handler.CreateToken(new Microsoft.IdentityModel.Tokens.SecurityTokenDescriptor
            {
                Issuer = _tokenConfiguration.Issuer,
                Audience = _tokenConfiguration.Audience,
                SigningCredentials = _singningConfigurations.SigningCredentials,
                Subject = identity,
                NotBefore = createDate,
                Expires = expirationDate
            });

            var token = handler.WriteToken(securityToken);
            return token;

        }

        private object ExceptionObject()
        {
            return new
            {
                autenticated = false,
                message = "Failed to autenticate"
            };
        }

        private object SuccessObjetct(DateTime createDate, DateTime expirationDate, string token)
        {
            return new
            {
                autenticated = true,
                created = createDate.ToString("yyyy-MM-dd HH:mm:ss"),
                expiration = expirationDate.ToString("yyyy-MM-dd HH:mm:ss"),
                accessToken = token,
                message = "Ok"
            };
        }
    }
}
