﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1625578_IbnuAnwari
{
    public partial class sitecontact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsendemail_Click(object sender, EventArgs e)
        {
            SmtpClient Client = new SmtpClient();
            MailMessage msg = new MailMessage ("ad.mail.feedbacks@gmail.com", "ad.mail.feedbacks@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtbody.Text;

            Client.Host = "smtp.gmail.com";
            Client.Port = 587;
            Client.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("ad.mail.feedbacks@gmail.com", "Che1625578");
            Client.Credentials = credentials;

            try
            {
                Client.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";

            }
        }
    }
}