using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Complain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            string uname = Request.Cookies["user_login"].Value;
            int check = objBunyaad.checkAccount(uname);
            if (check == 1)
            {
                Response.Redirect("Sign_In.aspx");
            }

        }
        protected void complain(object sender, EventArgs e)
        {
            string user_name = Respondant_username.Text;

            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
        
            int check = 0;
            string uname = Request.Cookies["user_login"].Value;
            if (Check_4_Complain.Checked)
            {
                uname = "";

            }

            check = objBunyaad.complain(user_name, uname);

            if (check != -1)
            {
                Response.Redirect("User.aspx");
            }
            else
            {
                label1.Text = "User does not exist";
                label1.ForeColor = System.Drawing.Color.Red;
                label1.Visible = true;
            }

        }


    }
}