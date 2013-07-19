using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Web.Services;

namespace MenuTest
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MailMessage msg = new MailMessage();

            //msg.To = txtTo.Text;
            //msg.From = txtFrom.Text;
            //msg.Subject = txtSubject.Text;
            //msg.Body = txtContent.Value;


            //SmtpMail.SmtpServer = "relay-hosting.secureserver.net";
            //SmtpMail.Send(msg); \
            Response.Write("your mail was sent successfully");

        }

     
        public static string SendMessage()
        {
            //HttpContext context = HttpContext.Current;
            //context.Response.Write("come here");
            return "your mail was sent successfully";

        }
    }
}