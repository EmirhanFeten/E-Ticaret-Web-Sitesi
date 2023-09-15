using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Uye uye = new Uye();
            UyeCRUD uyecrud = new UyeCRUD();
            uye.MName = TextBox1.Text;
            uye.MSName = TextBox2.Text;
            uye.MUserName = TextBox3.Text;
            uye.MPsw = TextBox4.Text;
            uye.MMail = TextBox6.Text;

            DataTable dt = uyecrud.uyeListe();
            bool cevap = uyecrud.uyeKayit(TextBox3.Text, TextBox6.Text);
            if (cevap != true)
            {
                bool cvp = uyecrud.uyeEkle(uye);
                if (cvp == true)
                {
                    Response.Redirect("login.aspx");
                }
            }
            else if (cevap == true && TextBox3.Text == dt.Rows[0][3].ToString() && TextBox6.Text != dt.Rows[0][5].ToString())
            {
                Panel1.Visible = true;
            }
            else if (cevap == true && TextBox6.Text == dt.Rows[0][5].ToString() && TextBox3.Text != dt.Rows[0][3].ToString())
            {
                Panel2.Visible = true;
            }
            else
            {
                Panel3.Visible = true;
            }
        }
    }
}