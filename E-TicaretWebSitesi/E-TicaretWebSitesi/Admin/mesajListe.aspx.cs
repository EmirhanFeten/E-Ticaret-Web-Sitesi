using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi.Admin
{
    public partial class mesajListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            string mesajUno = Request.QueryString["mesaj"];
            string mesajTo = Request.QueryString["to"];
            if (mesajUno!=null)
            {
                Email email = new Email();
                email.hazirMesaj(mesajTo);
                Panel1.Visible=true;
            }

            string uno = Request.QueryString["sil"];
            if (uno!=null)
            {
                MesajCRUD mesajcrud=new MesajCRUD();
                mesajcrud.mesajSil(Convert.ToInt32( Request.QueryString["sil"]));
            }
        }
    }
}