using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(mystoragesearch.Startup))]
namespace mystoragesearch
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
