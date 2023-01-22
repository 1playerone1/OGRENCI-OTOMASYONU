using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odev5
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(EmailBox.Text.ToString().Trim());
            mail.From = new MailAddress("playerone1923@gmail.com");
            mail.Subject = NameBox.Text.ToString();
            mail.Body = MessageBox.Text.ToString();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("playerone1923@gmail.com", "oultwdavtttubdmq");
            smtp.Send(mail);

            Response.Write("<script>alert('Mesajınız Gönderildi!');</script>");
        }
    }
}