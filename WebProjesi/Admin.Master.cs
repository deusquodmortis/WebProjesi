using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjesi
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        Services.WebService a = new Services.WebService();
        protected void Page_Load(object sender, EventArgs e)
        {
            Text1.InnerText = DateTime.Now.ToString();
            Timer1.Enabled = true;
        }
        public void Timer_Tick(object sender, EventArgs e)
        {
            Text1.InnerText = a.SaatGetir();
        }
    }
}