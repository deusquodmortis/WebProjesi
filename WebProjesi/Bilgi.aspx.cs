using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProje.DataAccess;

namespace WebProjesi
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        BilgiData baglanti = new BilgiData();
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Doldur();
        }
    }
}