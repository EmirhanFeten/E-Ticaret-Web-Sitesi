using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class MesajCRUD
    {
        Db db = new Db();
        public bool mesajEkle(Mesaj gMesaj)
        {
            int ksay;
            bool cvp = true;
            db.open();
            SqlCommand command = new SqlCommand("insert into mail values(@a,@b,@c,@d)", db.baglanti);
            command.Parameters.AddWithValue("@a", gMesaj.MailName);
            command.Parameters.AddWithValue("@b", gMesaj.TypeId);
            command.Parameters.AddWithValue("@c", gMesaj.MailAdress);
            command.Parameters.AddWithValue("@d", gMesaj.MailMessage);
            ksay = command.ExecuteNonQuery();
            if (ksay == 0)
            {
                cvp = false;
            }
            db.close();
            return cvp;

        }
        public DataTable mesajListe()
        {
            DataTable dt = new DataTable();
            db.open();
            SqlCommand command = new SqlCommand("select * from mail",db.baglanti);
            SqlDataAdapter adt= new SqlDataAdapter(command);
            adt.Fill(dt);
            db.close();
            return dt;
        }
        public bool mesajSil(int gMid)
        {

        }
    }
}