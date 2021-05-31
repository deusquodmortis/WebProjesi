using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;
using System.Net;

namespace WebProjesi
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Mail(object sender, EventArgs e)
        {
            var client = new SmtpClient();
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("deusquodmortis@gmail.com", "-Test123-");
            var message = new MailMessage
            {
                Subject = "WebSitesiİletişimKutusu",
                IsBodyHtml = true,
                Body = mail2.Value,
                From = new MailAddress(mail1.Value),
            };
            message.To.Add(new MailAddress("unalkenan98@hotmail.com"));
            client.Send(message);
        }
    }
}