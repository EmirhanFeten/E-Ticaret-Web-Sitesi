using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class AdminCRUD
    {
        Db db=new Db();
        public bool adminGiris(string gUName , string gPsw)
        {
            bool cvp = true;
            db.open();
            SqlCommand command = new SqlCommand("select count(userName) from admUser where userName=@pUName and psw=@pPsw", db.baglanti);
            command.Parameters.AddWithValue("@pUName", gUName);
            command.Parameters.AddWithValue("@pPsw", gPsw);
            int ksay=Convert.ToInt32( command.ExecuteScalar());
            if (ksay==0)
            {
                cvp = false;
            }
            db.close();
            return cvp;
        }
    }
}