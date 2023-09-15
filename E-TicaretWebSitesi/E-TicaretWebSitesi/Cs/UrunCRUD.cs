using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class UrunCRUD
    {
        Db db = new Db();
        public string urunEkle(Urun gUrun)
        {
            int ksay = 0;
            string cvp = "ok";
            db.open();
            SqlCommand command = new SqlCommand("insert into products values(@a,@b,@c,@d,@e,@f,@g,@h,@j,@l)", db.baglanti);
            command.Parameters.AddWithValue("@a", gUrun.PNo);
            command.Parameters.AddWithValue("@b", gUrun.PName);
            command.Parameters.AddWithValue("@c", gUrun.PExplanation);
            command.Parameters.AddWithValue("@d", gUrun.SızeId);
            command.Parameters.AddWithValue("@e", gUrun.PStock);
            command.Parameters.AddWithValue("@f", gUrun.PPrice);
            command.Parameters.AddWithValue("@g", gUrun.PPic);
            command.Parameters.AddWithValue("@h", gUrun.PPicTwo);
            command.Parameters.AddWithValue("@j", gUrun.PPicThree);
            command.Parameters.AddWithValue("@l", gUrun.PPicFour);
            ksay = command.ExecuteNonQuery();
            if (ksay == 0)
            {
                cvp = "not ok";
            }
            db.close();
            return cvp;
        }

        public DataTable urunListe()
        {
            DataTable dt = new DataTable();
            db.open();
            SqlCommand command = new SqlCommand("select pNo,pName,pExplanation,sizeName,pStock,pPrice,pPic,pPicTwo,pPicThree,pPicFour from products,size where products.sizeId=size.sizeid", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.close();
            return dt;

        }

        public bool urunSil(string gid)
        {
            int snc;
            bool durum = true;
            db.open();
            SqlCommand command = new SqlCommand("delete from products where pNo=@pUrunNo ", db.baglanti);
            command.Parameters.AddWithValue("@pUrunNo", gid);
            snc = command.ExecuteNonQuery();
            if (snc == 0)
            {
                durum = false;
            }
            db.close();
            return durum;
        }
    }
}