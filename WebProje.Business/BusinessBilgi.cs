using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebProje.Business
{
    public class BusinessBilgi
    {
        public string BilgiAd { get; set; }
        public string BilgiAciklama { get; set; }

        DataAccess.AydinAydinEntities db = new DataAccess.AydinAydinEntities();
        DataAccess.Bilgi yenibilgi = new DataAccess.Bilgi();
        public void BilgiEkle(string a, string b)
        {
            yenibilgi.Bilgi_Ad = a;
            yenibilgi.Bilgi_Icerik = b;
            db.Bilgis.Add(yenibilgi);
            db.SaveChanges();
            var vericek = Listele();
        }

        public string BilgiSil(string a,DataAccess.Bilgi nesne)
        {
            var aranan = db.Bilgis.Where(p => p.Bilgi_Ad == a).FirstOrDefault();
            aranan.Bilgi_Ad = nesne.Bilgi_Ad;
            aranan.Bilgi_Icerik = nesne.Bilgi_Icerik;
            db.Bilgis.Remove(aranan);
            db.SaveChanges();
            var verilerigetir = Listele();
            return "1";
        }
        public string BilgiGüncelle(string a, DataAccess.Bilgi nesne)
        {
            var aranan = db.Bilgis.Where(p => p.Bilgi_Ad == a).FirstOrDefault();
            aranan.Bilgi_Ad = nesne.Bilgi_Ad;
            aranan.Bilgi_Icerik = nesne.Bilgi_Icerik;
            db.SaveChanges();
            var verilerigetir = Listele();
            return "1";
        }
        public List<DataAccess.Bilgi> Listele()
        {
            DataAccess.AydinAydinEntities ent = new DataAccess.AydinAydinEntities();
            ent.Database.Connection.Open();
            var sonuc = ent.Bilgis.ToList();
            return sonuc;
        }
    }
}
