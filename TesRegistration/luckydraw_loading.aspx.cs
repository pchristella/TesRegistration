using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TesRegistration.Module.LuckyDraw
{
    public partial class luckydraw_loading : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
          Response.Redirect("luckydraw_result_staff.aspx");
        }
    }
}