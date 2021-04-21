using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebProje.DataAccess
{
    public class BilgiData
    {
        DBConnection baglanti = new DBConnection();

        public string infoname1 { get; set; }
        public string info1 { get; set; }
        public string infoname2 { get; set; }
        public string info2 { get; set; }
        public string infoname3 { get; set; }
        public string info3 { get; set; }
        public string infoname4 { get; set; }
        public string info4 { get; set; }
        public static string[] name = new string[10];
        public static string[] info = new string[10];

        public void Doldur()
        {
            SqlConnection con = baglanti.Baglan();
            for (int i = 1; i < 6; i++)
            {
                SqlCommand komut = new SqlCommand("Select * from Bilgi where Bilgi_Id="+i+"", con);
                con.Open();
                SqlDataReader oku = komut.ExecuteReader();
                if (oku.Read())
                {
                    name[i] = oku["Bilgi_Ad"].ToString();
                    info[i] = oku["Bilgi_Icerik"].ToString();

                }
            }
            
        }
    }
}
