using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi.Admin
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AdminCRUD admincrud=new AdminCRUD();
            bool cevap=admincrud.adminGiris(TextBox1.Text,TextBox2.Text);
            if (cevap==true) 
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
        }
    }
}