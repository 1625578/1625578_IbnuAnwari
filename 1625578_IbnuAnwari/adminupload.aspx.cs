using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class adminupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string ProductsId = Request.QueryString["ProductsId"];
            string filename = ProductsId + ".jpg";
            string savelocation = Server.MapPath("~/images/products/" + filename);

            FileUploadControl.SaveAs(savelocation);
            litUpload.Text = ProductsId + filename + "." + "Images is Successfully Uploaded";
         }
     }
}