﻿using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] != null)
            {
                UyeCRUD uyecrud = new UyeCRUD();
                DataTable dt = uyecrud.userNameFind(Session["uye"].ToString());
                TextBox1.Text = Session["uye"].ToString();
                TextBox2.Text = dt.Rows[0][5].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Mesaj mesaj = new Mesaj();
            //MesajCRUD mesajcrud = new MesajCRUD();
            //mesaj.MailName = TextBox1.Text;
            //mesaj.TypeId = DropDownList1.se
        }
    }
}