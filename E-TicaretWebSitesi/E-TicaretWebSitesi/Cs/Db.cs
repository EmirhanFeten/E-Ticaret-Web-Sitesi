using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_TicaretWebSitesi.Cs
{
    public class Db
    {
        public SqlConnection baglanti = new SqlConnection
            (ConfigurationManager.ConnectionStrings["dbyol"].ConnectionString);

        public void open()
        {
            baglanti.Open();
        }
        public void close()
        {
            baglanti.Close();
        }
    }
}