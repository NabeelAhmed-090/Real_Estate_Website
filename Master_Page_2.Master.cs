using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Master_Page_2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void home(object sender, EventArgs e)
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            int type = objBunyaad.Check_Type(uname);
            if (type == 1)
            {
                Response.Redirect("Agent.aspx");
            }
            else
            {
                Response.Redirect("User.aspx");
            }
        }
    }
}