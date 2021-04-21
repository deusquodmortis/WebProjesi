using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebProje.DataAccess
{
    public class DBConnection
    {
        public SqlConnection Baglan()
        {
            //database bağlantı komutumuz
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-KNCB6SO\SQLEXPRESS;Initial Catalog=AydinAydin;Integrated Security=True");
            return con;
        }
    }
}
