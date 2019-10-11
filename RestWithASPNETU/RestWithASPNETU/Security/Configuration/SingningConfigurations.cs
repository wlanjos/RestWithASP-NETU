using Microsoft.IdentityModel.Tokens;
using System.Security.Cryptography;

namespace RestWithASPNETU.Security.Configuration
{
    public class SingningConfigurations
    {
        public SecurityKey Key { get; set; }
        public SigningCredentials SigningCredentials { get; set; }

        public SingningConfigurations()
        {
            using (var provider = new RSACryptoServiceProvider(2048))
            {
                Key = new RsaSecurityKey(provider.ExportParameters(true));
            }

            SigningCredentials = new SigningCredentials(Key, SecurityAlgorithms.RsaSha256Signature);

        }

    }
}
