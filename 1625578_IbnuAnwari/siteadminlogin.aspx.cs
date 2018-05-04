using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class siteadminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var Admin = userManager.Find(txtLoginEmail.Text, TxtLoginPassword.Text);
            if (Admin != null)
            {
                LogUserIn(userManager, Admin);
            }
            else
            {
                litLoginError.Text = "Invalid username or password";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            if (Request.QueryString["~/siteadminlogin.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/siteadminlogin.aspx"]);
            }
            else
            {
                String UserRoles = userManager.GetRoles(user.Id).FirstOrDefault();
                if (UserRoles.Equals("Admin"))
                {
                    Response.Redirect("~/adminlistproduct.aspx");
                }
            }

        }

    }
}