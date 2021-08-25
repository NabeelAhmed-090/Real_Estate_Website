using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Sign_In_Button(object sender, EventArgs e)
        {
            String Uname = User_Name_2_Sign_In.Text;
            String password = Password_1_Homepage.Text;


            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();

            int check = 0;

            Label1.Text = "";
            Label2.Text = "";
            lable4.Text = "";

            Label1.Visible = false;
            Label2.Visible = false;
            lable4.Visible = false;
            check = objBunyaad.Sign_In_Check(Uname, password);

            if(check == 1)
            {

                Response.Cookies["user_login"].Value = Uname;
                Response.Cookies["user_login"].Expires = DateTime.Now.AddDays(2);
                Response.Cookies["type"].Value = "normal";
                Response.Cookies["type"].Expires = DateTime.Now.AddDays(2);
                Response.Redirect("User.aspx");
            }
            else if (check == 2)
            {
                Response.Cookies["user_login"].Value = Uname;
                Response.Cookies["user_login"].Expires = DateTime.Now.AddDays(2);
                Response.Cookies["type"].Value = "Agent";
                Response.Cookies["type"].Expires = DateTime.Now.AddDays(2);
                Response.Redirect("Agent.aspx");
            }
            if (check == 3)
            {
                Label1.Visible = true;
                Label1.Text = "User name doesn't exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            if (check == 4)
            {
                Label2.Visible = true;
                Label2.Text = "Incorrect password";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Password_Reset(object sender, EventArgs e)
        {
            String email = email_pass_reset.Text;
            String password = pass_pass_reset.Text;

            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();


            Label1.Text = "";
            Label2.Text = "";
            lable4.Text = "";

            Label1.Visible = false;
            Label2.Visible = false;
            lable4.Visible = false;
            int check = objBunyaad.reset_pass(email,password);

            if (check == 0)
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password updated successfully')", true);

                lable4.Text = "Password updated successfully";
                lable4.ForeColor = System.Drawing.Color.Green;
                lable4.Visible = true;
            }
            else
            {
                lable4.Text = "Password did not update successfully";
                lable4.ForeColor = System.Drawing.Color.Red;
                lable4.Visible = true;
            }

        }

    }
}