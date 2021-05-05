using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje.DataAccess;

namespace WebProjesi
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        BilgiData baglanti = new BilgiData();
        WebProje.Business.BusinessBilgi blink = new WebProje.Business.BusinessBilgi();
        Bilgi nesne = new Bilgi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //public void Save_Size(object sender, EventArgs e) { baglanti.BoyutEkle(size1.Value); }
        protected void Bilgi_Kayit(object sender, EventArgs e)
        {
            //baglanti.BilgiEkle(bilgi_ad.Value, bilgi_icerik.Value);
            blink.BilgiEkle(bilgi_ad.Value, bilgi_icerik.Value);

        }
        protected void Bilgi_Update(object sender, EventArgs e)
        {
            //baglanti.BilgiUpdate(update_old.Value, update_new.Value, update_detail.Value);
            nesne.Bilgi_Ad = update_new.Value;
            nesne.Bilgi_Icerik = update_detail.Value;
            blink.BilgiGüncelle(update_old.Value, nesne);
        }
        protected void Bilgi_Sil(object sender, EventArgs e)
        {
            //baglanti.BilgiSil(Del.Value);

            blink.BilgiSil(Del.Value, nesne);
        }
    }
}