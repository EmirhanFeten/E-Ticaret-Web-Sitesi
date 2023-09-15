using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class Mesaj
    {
        string mailName, mailAdress, mailMessage;
        int typeId;

        public string MailName { get => mailName; set => mailName = value; }
        public string MailAdress { get => mailAdress; set => mailAdress = value; }
        public string MailMessage { get => mailMessage; set => mailMessage = value; }
        public int TypeId { get => typeId; set => typeId = value; }
    }
}