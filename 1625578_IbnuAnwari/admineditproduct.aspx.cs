﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class admineditproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductsId = Request.QueryString["ProductsId"];
            string filename = ProductsId + ".jpg";

            currentImages.ImageUrl = "~/images/products/" + filename;
        }
    }
}