using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class siteproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("siteproduct.aspx?searchproduct=" + searchtext.Text);
        }
    }
}