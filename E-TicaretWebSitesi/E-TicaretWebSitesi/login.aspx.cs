using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UyeCRUD uyecrud = new UyeCRUD();
            bool cevap = uyecrud.uyeGiris(TextBox1.Text, TextBox2.Text);
            if (cevap == true)
            {
                Session["uye"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
        }
    }
}