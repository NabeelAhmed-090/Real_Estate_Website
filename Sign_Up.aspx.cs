using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Sign_Up_Button(object sender, EventArgs e)
        {
            String email = Email_Address_2_Homepage.Text;
            String User_Name = User_Name_1_Homepage.Text;
            String city = City_1_Homepage.Text;
            String password = Password_2_Homepage.Text;
            String confirm_pass = Confirm_Password_2_Homepage.Text;
            String name = Name_1_Homepage.Text;
            String type = State_1_Homepage.Text;
           

            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();


            int check = 0;
            Label_1_SU.Visible = false;
            Label_2_SU.Visible = false;
            Label1.Visible = false;
            if (password != confirm_pass)
            {
                Label_2_SU.Text = "*Passwords dont match";
                Label_2_SU.ForeColor = System.Drawing.Color.Red;
                Label_2_SU.Visible = true;
            }
            else
            {
                check = objBunyaad.Sign_Up_Check(email, User_Name, city, password, name, type);

                if (check == 1)
                {
                    Label_1_SU.Visible = true;
                    Label_1_SU.Text = "*Email missing .com extension";
                    Label_1_SU.ForeColor = System.Drawing.Color.Red;
                    
                }
                else if (check == 2)
                {
                    Label_1_SU.Visible = true;
                    Label_1_SU.Text = "*Email already exists";
                    Label_1_SU.ForeColor = System.Drawing.Color.Red;
                    
                }
                else if (check == 3)
                {
                    Label1.Visible = true;
                    Label1.Text = "*User Name already exists";
                    Label1.ForeColor = System.Drawing.Color.Red;
                   
                }
                else
                {
                    Response.Redirect("Sign_In.aspx");
                }
            }
        }
    }
}