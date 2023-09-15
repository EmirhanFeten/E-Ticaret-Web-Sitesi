using E_TicaretWebSitesi.Cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Security.AccessControl;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_TicaretWebSitesi.Admin
{
    public partial class urunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol = null, yol2 = null, yol3 = null, yol4 = null;

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
                yol = "../img/" + FileUpload1.FileName;
            }
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("/img/") + FileUpload2.FileName);
                yol2 = "../img/" + FileUpload2.FileName;
            }
            else
            {
                yol2 = "Resim Yok";
            }
            if (FileUpload3.HasFile)
            {
                FileUpload3.SaveAs(Server.MapPath("/img/") + FileUpload3.FileName);
                yol3 = "../img/" + FileUpload3.FileName;
            }
            else
            {

                yol3 = "Resim Yok";
            }
            if (FileUpload4.HasFile)
            {
                FileUpload4.SaveAs(Server.MapPath("/img/") + FileUpload4.FileName);
                yol4 = "../img/" + FileUpload4.FileName;
            }
            else
            {

                yol4 = "Resim Yok";
            }


            Urun urun = new Urun();
            UrunCRUD uruncrud = new UrunCRUD();
            urun.PNo = TextBox1.Text;
            urun.PName = TextBox2.Text;
            urun.PExplanation = TextBox3.Text;
            urun.SızeId = Convert.ToInt32(DropDownList1.SelectedValue);
            urun.PStock = Convert.ToInt32(TextBox5.Text);
            urun.PPrice = Convert.ToInt32(TextBox4.Text);
            urun.PPic = yol;
            urun.PPicTwo = yol2;
            urun.PPicThree = yol3;
            urun.PPicFour = yol4;


            DataTable dt = uruncrud.urunListe();
            if (TextBox1.Text != dt.Rows[0][0].ToString())
            {
                string cevap = uruncrud.urunEkle(urun);
                if (cevap == "ok")
                {
                    Panel1.Visible = true;
                }

            }
            else
            {
                Panel2.Visible = true;
            }
        }
    }
}