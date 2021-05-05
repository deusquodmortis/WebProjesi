using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebProje.Business
{
    class BusinessHakkinda
    {
        public string HakkindaAciklama { get; set; }
        public string HakkindaAdres { get; set; }

        DataAccess.AydinAydinEntities db = new DataAccess.AydinAydinEntities();
        DataAccess.Hakkinda islem = new DataAccess.Hakkinda();

        public void HakkindaEkle(string a, string b)
        {
            islem.Hakkinda_Aciklama = a;
            islem.Hakkinda_Adres = b;
            db.Hakkindas.Add(islem);
            db.SaveChanges();
            var vericek = Listele();
        }
        public void HakkindaSil()
        {
            var records = from m in db.Hakkindas
                          select m;
            foreach (var record in records)
            {
                db.Hakkindas.Remove(record);
            }
            db.SaveChanges();
            var vericek = Listele();
        }
        public List<DataAccess.Hakkinda> Listele()
        {
            DataAccess.AydinAydinEntities ent = new DataAccess.AydinAydinEntities();
            ent.Database.Connection.Open();
            var sonuc = ent.Hakkindas.ToList();
            return sonuc;
        }
    }
}
