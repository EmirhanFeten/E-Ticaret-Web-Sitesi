﻿using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi.Admin
{
    public partial class uyelerListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uno = Request.QueryString["sil"];
            if (uno != null)
            {
                UyeCRUD uyecrud = new UyeCRUD();
                uyecrud.uyeSil(Request.QueryString["sil"]);
            }
        }
    }
}