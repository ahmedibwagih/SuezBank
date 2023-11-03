using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SuezBank.Startup))]
namespace SuezBank
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
