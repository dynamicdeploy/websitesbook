using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OAuthWeb.Startup))]
namespace OAuthWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
