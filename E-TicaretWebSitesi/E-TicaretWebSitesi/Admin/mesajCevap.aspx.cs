using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi.Admin
{
    public partial class mesajCevap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (!IsPostBack) 
            {
                string uno = Request.QueryString["mesajD"];
                if (uno != null)
                {
                    MesajCRUD mesajcrud = new MesajCRUD();
                    DataTable dt = mesajcrud.mesajDetayListe(Convert.ToInt32(uno));
                    TextBox1.Text = dt.Rows[0][1].ToString();
                    TextBox2.Text = dt.Rows[0][3].ToString();
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Email email= new Email();
            email.gonder(TextBox2.Text, TextBox3.Text,TextBox1.Text);
            Panel1.Visible=true;
        }
    }
}