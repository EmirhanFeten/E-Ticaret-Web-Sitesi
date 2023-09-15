using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class UyeCRUD
    {
        Db db = new Db();
        public bool uyeEkle(Uye gUye)
        {
            int ksay = 0;
            bool cvp = true;
            db.open();
            SqlCommand command = new SqlCommand("insert into member values(@a,@b,@c,@d,@e)", db.baglanti);
            command.Parameters.AddWithValue("@a", gUye.MName);
            command.Parameters.AddWithValue("@b", gUye.MSName);
            command.Parameters.AddWithValue("@c", gUye.MUserName);
            command.Parameters.AddWithValue("@d", gUye.MPsw);
            command.Parameters.AddWithValue("@e", gUye.MMail);
            ksay = command.ExecuteNonQuery();
            if (ksay == 0)
            {
                cvp = false;
            }
            db.close();
            return cvp;
        }
        public DataTable uyeListe()
        {
            DataTable dt = new DataTable();
            db.open();
            SqlCommand command = new SqlCommand("select * from member", db.baglanti);
            SqlDataAdapter adt = new SqlDataAdapter(command);
            adt.Fill(dt);
            db.close();
            return dt;
        }
        public bool uyeKayit(string p1, string p2)
        {
            bool cevap = true;
            db.open();
            SqlCommand komut = new SqlCommand("select count(mUserName) from member where mUserName=@a or mMail=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", p1);
            komut.Parameters.AddWithValue("@b", p2);
            int kaysay = Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay == 0)
            {
                cevap = false;
            }
            db.close();
            return cevap;
        }
        public bool uyeGiris(string p1, string p2)
        {
            bool cevap = true;
            db.open();
            SqlCommand komut = new SqlCommand("select count(mUserName) from member where mUserName=@a and mPsw=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", p1);
            komut.Parameters.AddWithValue("@b", p2);
            int kaysay = Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay == 0)
            {
                cevap = false;
            }
            db.close();
            return cevap;
        }
        public bool uyeSil(string gid)
        {
            bool cevap = true;
            int snc;
            db.open();
            SqlCommand command = new SqlCommand("delete from member where memberid=@pMemberid", db.baglanti);
            command.Parameters.AddWithValue("@pMemberid", gid);
            snc = command.ExecuteNonQuery();
            if (snc == 0)
            {
                cevap = false;
            }
            db.close();
            return cevap;
        }
        public DataTable userNameFind(string gUser)
        {
            DataTable dt = new DataTable();
            int snc;
            db.open();
            SqlCommand command = new SqlCommand("select * from member where mUserName=@pUserName", db.baglanti);
            command.Parameters.AddWithValue("@pUserName", gUser);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.close();
            return dt;
        }

    }
}