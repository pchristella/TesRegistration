using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TesRegistration.Startup))]
namespace TesRegistration
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
