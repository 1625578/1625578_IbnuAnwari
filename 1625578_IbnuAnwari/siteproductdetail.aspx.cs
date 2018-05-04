using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class siteproductdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductsId = Request.QueryString["ProductsId"];
            string filename = ProductsId + ".jpg";
            productImage.ImageUrl = "~/images/products/" + filename;
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("siteshoppingcart.aspx");
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("siteshoppingcart.aspx");
        }
    }
}