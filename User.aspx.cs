using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            string uname = Request.Cookies["user_login"].Value;
            int check = objBunyaad.checkAccount(uname);
            if(check == 1)
            {
                Response.Redirect("Sign_In.aspx");
            }

            if (String.Equals(Request.Cookies["user_login"].Value, "") == false)
            {
                uname = Request.Cookies["user_login"].Value;
                
                string[] fname = new string[5];
                fname = objBunyaad.User_Login(uname);
                uname = "@" + uname;
                label1.Text = fname[0];
                label2.Text = uname;
                label3.Text = fname[1];
                if (fname[2] == "")
                {
                    user_pic.ImageUrl = "Images/avatar_m.png";
                }
                else
                {
                    user_pic.ImageUrl = fname[2];
                }
                if(fname[4] == "1")
                {
                    PU.Text = "Premium User";
                }
                else
                {
                    PU.Text = "";
                }
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Response.Cookies["user_login"].Value = "";
            Response.Redirect("Sign_In.aspx");
        }
        protected void putOnSale(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.Cookies["Property_Id"].Value);
            int price = Convert.ToInt32(Base_Price_1_User.Text);
            Bunyaad_Dal obj = new Bunyaad_Dal();
            obj.putOnSale(ID, price);
            Sale_User.Style.Add("display", "none");
        }
        protected void switch_user_1(object sender, EventArgs e)
        {
            Response.Cookies["mode"].Value = "seller";
            buyer.Style.Add("display", "none");
            sell.Style.Add("display", "block");
            Notifications_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");

            NotificationButton_1_User.Style.Add("display", "none");
            ShortlistButton_1_User.Style.Add("display", "none");
            SubscriptionButton_1_User.Style.Add("display", "none");
            propertyButton_1_User.Style.Add("display", "block");
            offerButton_1_User.Style.Add("display", "block");
            Shop_Button_Property.NavigateUrl = "#";
            drop_user.Style.Add("margin-Left", "220px");
        }
        protected void switch_user_2(object sender, EventArgs e)
        {
            Response.Cookies["mode"].Value = "buyer";
            sell.Style.Add("display", "none");
            buyer.Style.Add("display", "block");
            Notifications_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "none");

            propertyButton_1_User.Style.Add("display", "none");
            offerButton_1_User.Style.Add("display", "none");
            NotificationButton_1_User.Style.Add("display", "block");
            ShortlistButton_1_User.Style.Add("display", "block");
            SubscriptionButton_1_User.Style.Add("display", "block");
            Shop_Button_Property.NavigateUrl = "Search.aspx";
            drop_user.Style.Add("margin-Left", "230px");
        }

        protected void displaySubscriptions_User(object sender, EventArgs e)
        {
            Notifications_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "block");

            LoadSubscriptions();
        }
        public void LoadSubscriptions()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            Subs_Table.DataSource = objBunyaad.SelectSubscriptionsUser(uname);
            Subs_Table.DataBind();
        }
        protected void hideSubscriptions_User(object sender, EventArgs e)
        {
            Subscriptions_User.Style.Add("display", "none");
        }

        protected void displayProperties_User(object sender, EventArgs e)
        {
            Notifications_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "block");
            LoadProperties();
        }
        public void LoadProperties()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            Proptable.DataSource = objBunyaad.SelectPropertyUser(uname);
            Proptable.DataBind();
        }
        protected void hideProperties_User(object sender, EventArgs e)
        {
            Properties_User.Style.Add("display", "none");
        }

        protected void displayOffers_User(object sender, EventArgs e)
        {
            Notifications_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "block");
            LoadOffers();
        }
        public void LoadOffers()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            Offer_table.DataSource = objBunyaad.SelectOffersUser(uname);
            Offer_table.DataBind();
        }
        protected void hideOffers_User(object sender, EventArgs e)
        {
            Offer_User.Style.Add("display", "none");
        }

        protected void displayNotifications_User(object sender, EventArgs e)
        {

            Properties_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "none");
            Notifications_User.Style.Add("display", "block");

            LoadNotification();
        }
        public void LoadNotification()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            nots_table.DataSource = objBunyaad.SelectNotifications(uname);
            nots_table.DataBind();
        }
        protected void hideNotifications_User(object sender, EventArgs e)
        {
            Notifications_User.Style.Add("display", "none");
        }

        protected void displayShortlist_User(object sender, EventArgs e)
        {
            Notifications_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Offer_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "block");
            Loadshortlisted();
        }
        public void Loadshortlisted()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            shortlist_table.DataSource = objBunyaad.SelectShortlisted(uname);
            shortlist_table.DataBind();
        }
        protected void hideShortlist_User(object sender, EventArgs e)
        {
            Shortlist_User.Style.Add("display", "none");
        }

        protected void hideSale_User(object sender, EventArgs e)
        {
            Sale_User.Style.Add("display", "none");
        }

        protected void GridView1_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view_button")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table.Rows[index];
                string agent = row1.Cells[0].Text;
                Response.Redirect("~/visitProfile.aspx?username=" + agent);
            }
        }

        protected void GridView2_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = shortlist_table.Rows[index];
            string ID = row1.Cells[0].Text;
            Response.Cookies["owner"].Value = row1.Cells[1].Text;
            Response.Redirect("~/Property.aspx?ID=" + ID);
        }

        protected void GridView3_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            string uname = Request.Cookies["user_login"].Value;
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = nots_table.Rows[index];
            string ID = row1.Cells[0].Text;
            Bunyaad_Dal obj = new Bunyaad_Dal();
            obj.DeleteNotification(ID);
            nots_table.DataSource = obj.SelectNotifications(uname);
            nots_table.DataBind();

        }

        protected void GridView4_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = Proptable.Rows[index];

            Response.Cookies["Property_Id"].Value = row1.Cells[0].Text;
            Notifications_User.Style.Add("display", "none");
            Properties_User.Style.Add("display", "none");
            Subscriptions_User.Style.Add("display", "none");
            Shortlist_User.Style.Add("display", "none");
            Sale_User.Style.Add("display", "block");
        }

        protected void Offer_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = Offer_table.Rows[index];
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string Buyer = row1.Cells[0].Text;
            int ID = Convert.ToInt32(row1.Cells[1].Text);
            int price = Convert.ToInt32(row1.Cells[2].Text);
            if (e.CommandName == "Accept")
            {
                obj.changeOwner(ID, Buyer);
            }
            else
            {
                obj.deleteOffer(Buyer, ID);

            }
            LoadOffers();
        }

    }

    
}