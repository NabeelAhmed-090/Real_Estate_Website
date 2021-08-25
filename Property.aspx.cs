using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Property : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string u1 = Request.Cookies["user_login"].Value;
            int check = obj.checkAccount(u1);
            if (check == 1)
            {
                Response.Redirect("Sign_In.aspx");
            }

            string uname = Request.Cookies["owner"].Value;
            string ID = Request.QueryString["ID"].ToString();
            int CP = obj.checkProperty(ID);
            if (CP == 1)
            {
                if(Request.Cookies["type"].Value == "Agent")
                {
                    Response.Redirect("Agent.aspx");
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
               
            }
            string name = Request.Cookies["user_login"].Value;

            string[] ret = new string[7];
            ret = obj.PropertyVisit(uname, ID);
            check = obj.checkShortlist(name, Convert.ToInt32(ID));
            if (check == 1)
            {
                shortlist.Style.Add("display", "none");
                shorlist_slash.Style.Add("display", "block");
            }
            else
            {
                shorlist_slash.Style.Add("display", "none");
                shortlist.Style.Add("display", "block");
            }

            description_label.Text = ret[5];
            state_prop.Text = "Punjab";
            city_prop.Text = ret[0];
            region_prop.Text = ret[1];
            sq_prop.Text = ret[3];
            address_prop.Text = ret[2];
            if (ret[6] == "")
            {
                propImage.ImageUrl = "Images / house_2.jpg";
            }
            else
            {
                propImage.ImageUrl = ret[6];
            }
            string[] prop_card = new string[2];
            prop_card = obj.PropertyCardDetails(Convert.ToInt32(ID));
            owner_name.Text = prop_card[0];
            base_price.Text = prop_card[1];
        }
        protected void placeOffer(object sender, EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string PropID = Request.QueryString["ID"].ToString();
            int CP = obj.checkProperty(PropID);
            if (CP == 1)
            {
                if (Request.Cookies["type"].Value == "Agent")
                {
                    Response.Redirect("Agent.aspx");
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
            }
            updates.Visible = false;
            string password = Password_Property.Text;
            int offer = Convert.ToInt32(Offer_Property.Text);
            string uname = Request.Cookies["user_login"].Value;
            int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            int check = obj.placeOffer(uname, ID, offer, password);

            if(check == 1) {
                updates.Visible = true;
                updates.ForeColor = System.Drawing.Color.Red;
                updates.Text = "Incorrect Password";
            }
            else if (check == 0)
            {
                updates.Visible = true;
                updates.ForeColor = System.Drawing.Color.Green;
                updates.Text = "Offer placed";
            }
            else
            {
                updates.Visible = true;
                updates.ForeColor = System.Drawing.Color.Red;
                updates.Text = "Offer Below Base Price";
            }
        }
        protected void Add_shortlist(object sender,EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string PropID = Request.QueryString["ID"].ToString();
            int CP = obj.checkProperty(PropID);
            if (CP == 1)
            {
                if (Request.Cookies["type"].Value == "Agent")
                {
                    Response.Redirect("Agent.aspx");
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
            }
            string uname = Request.Cookies["user_login"].Value;
            int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            obj.AddShortlist(uname, ID);
            shortlist.Style.Add("display", "none");
            shorlist_slash.Style.Add("display", "block");
        }
        protected void Remove_shortlist(object sender, EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string PropID = Request.QueryString["ID"].ToString();
            int CP = obj.checkProperty(PropID);
            if (CP == 1)
            {
                if (Request.Cookies["type"].Value == "Agent")
                {
                    Response.Redirect("Agent.aspx");
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
            }
            string uname = Request.Cookies["user_login"].Value;
            int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            obj.RemoveShortlist(uname, ID);
            shorlist_slash.Style.Add("display", "none");
            shortlist.Style.Add("display", "block");

        }
    }
}