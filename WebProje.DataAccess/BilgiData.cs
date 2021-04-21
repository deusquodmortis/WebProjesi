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
                con.Close();
            }
            con.Close();
        }
        public void BilgiEkle(string info_name, string info_detail)
        {
            SqlConnection con = baglanti.Baglan();
            SqlCommand komut = new SqlCommand("INSERT INTO Bilgi VALUES ('" + info_name + "','"+ info_detail+"')", con);
            con.Open();
            komut.ExecuteNonQuery();
            con.Close();

        }
        public void BilgiUpdate(string old_info, string info_name, string info_detail)
        {
            SqlConnection con = baglanti.Baglan();
            SqlCommand komut = new SqlCommand("UPDATE Bilgi set Bilgi_Ad='"+info_name+"',Bilgi_Icerik='"+info_detail+"' where Bilgi_Ad='"+old_info+"'", con);
            con.Open();
            komut.ExecuteNonQuery();
            con.Close();
        }

        public void BilgiSil(string info_name)
        {
            SqlConnection con = baglanti.Baglan();
            SqlCommand komut = new SqlCommand("DELETE from Bilgi where Bilgi_Ad='"+info_name+"'", con);
            con.Open();
            komut.ExecuteNonQuery();
            con.Close();
        }
        public void BoyutEkle(string size2)
        {
            SqlConnection con = baglanti.Baglan();
            SqlCommand komut = new SqlCommand("INSERT INTO Boyut VALUES ('" + size2 + "')", con);
            con.Open();
            komut.ExecuteNonQuery();
            con.Close();
        }
    }
}
