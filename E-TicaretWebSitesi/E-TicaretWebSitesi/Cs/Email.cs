using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class Email
    {
        /*Mesaj İçeriğini Belirleyebilmek İçin*/
        public void gonder(string kime, string icerik, string kadi)
        {
            string to = kime;
            string from = "Mail Adresiniz";
            MailMessage message = new MailMessage(from, to);

            string mailbody = icerik;
            message.Subject = "Geri Dönüşünüz İçin Teşekkürler Sayın" + " " + kadi;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.office365.com", 587);
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("Mail Adresiniz", "Mail Adresinizin Şifresi");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;

            //try
            //{
            //    client.Send(message);
            //}
            //catch (Exception ex)
            //{

            //    throw ex;
            //}

            client.Send(message);
        }

        /*Hazır Cevap Maili*/
        public void hazirMesaj(string kime)
        {
            string to = kime;
            string from = "Mail Adresiniz";
            MailMessage message = new MailMessage(from, to);

            string mailbody = "En Kısa Zamanda İletişime Geçilecektir";
            message.Subject = "Geri Dönüşünüz İçin Teşekkürler";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.office365.com", 587);
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("Mail Adresiniz", "Mail Adresinizin Şifresi");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;

            //try
            //{
            //    client.Send(message);
            //}
            //catch (Exception ex)
            //{

            //    throw ex;
            //}

            client.Send(message);
        }
    }
}