using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Agent : System.Web.UI.Page
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
            string[] fname = new string[5];
            fname = objBunyaad.User_Login(uname);
            uname = "@" + uname;
            label1.Text = fname[0];
            label2.Text = uname;
            label3.Text = fname[1];
            if (fname[2] == "")
            {
                aegnt_pic.ImageUrl = "Images/avatar_m.png";
            }
            else
            {
                aegnt_pic.ImageUrl = fname[2];
            }
            if (fname[3] != "10")
            {
                rating.Text = fname[3];
            }
            else
            {
                rating.Text = "Not rated";
            }
            if (fname[4] == "1")
            {
                PU.Text = "Premium User";
            }
            else
            {
                PU.Text = "";
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Response.Cookies["user_login"].Value = "";
            Response.Redirect("Sign_In.aspx");
        }
        protected void putOnSale(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.Cookies["Agent_Prop_Id"].Value);
            int price = Convert.ToInt32(Base_Price_1_User.Text);
            Bunyaad_Dal obj = new Bunyaad_Dal();
            obj.putOnSale(ID, price);
            Sale_agent.Style.Add("display", "none");
        }

        protected void DisplayNotification(object sender, EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
            Subscriptions_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Notifications_Agent.Style.Add("display", "block");
            LoadNotifications();
        }
        public void LoadNotifications()
        {

            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            not_Table.DataSource = objBunyaad.SelectNotifications(uname);
            not_Table.DataBind();
        }
        protected void hideNotifications(object sender, EventArgs e)
        {
            Notifications_Agent.Style.Add("display", "none");
        }
        protected void GridView1_RowCommand(object sender,
       GridViewCommandEventArgs e)
        {
            string uname = Request.Cookies["user_login"].Value;
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = not_Table.Rows[index];
            string ID = row1.Cells[0].Text;
            Bunyaad_Dal obj = new Bunyaad_Dal();
            obj.DeleteNotification(ID);
            LoadNotifications();
        }

        protected void displayShortlist_Agent(object sender, EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
            Subscriptions_Agent.Style.Add("display", "none");
            Notifications_Agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "block");
            Loadshortlisted();
        }
        public void Loadshortlisted()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            shortlist_table_Agent.DataSource = objBunyaad.SelectShortlisted(uname);
            shortlist_table_Agent.DataBind();
        }
        protected void hideShortlist_Agent(object sender, EventArgs e)
        {
            Shortlist_Agent.Style.Add("display", "none");
        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = shortlist_table_Agent.Rows[index];
            string ID = row1.Cells[0].Text;
            Response.Cookies["owner"].Value = row1.Cells[1].Text;
            Response.Redirect("~/Property.aspx?ID=" + ID);
        }


        protected void DisplayProperties(object sender, EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
            Subscriptions_Agent.Style.Add("display", "none");
            Notifications_Agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "block");
            LoadProperties();
        }
        public void LoadProperties()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();

            Residential_Table.DataSource = objBunyaad.SelectResidential_Agent(uname);
            Residential_Table.DataBind();

            Commercial_Table.DataSource = objBunyaad.SelectCommercial_Agent(uname);
            Commercial_Table.DataBind();
        }
        protected void hideProperties(object sender, EventArgs e)
        {
            Properties_Agent.Style.Add("display", "none");
        }
        protected void GridView4_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = Commercial_Table.Rows[index];

            Response.Cookies["Agent_Prop_Id"].Value = row1.Cells[0].Text;

            Notifications_Agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Sale_agent.Style.Add("display", "block");
        }
        protected void GridView5_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = Residential_Table.Rows[index];

            Response.Cookies["Agent_Prop_Id"].Value = row1.Cells[0].Text;

            Notifications_Agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Sale_agent.Style.Add("display", "block");
        }

        protected void hideSale_agent(object sender, EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
        }


        protected void displayOffers_User(object sender, EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
            Subscriptions_Agent.Style.Add("display", "none");
            Notifications_Agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "block");
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
            Offer_agent.Style.Add("display", "none");
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

        protected void displaySubscription(object sender,EventArgs e)
        {
            Sale_agent.Style.Add("display", "none");
            Notifications_Agent.Style.Add("display", "none");
            Shortlist_Agent.Style.Add("display", "none");
            Offer_agent.Style.Add("display", "none");
            Properties_Agent.Style.Add("display", "none");
            Subscriptions_Agent.Style.Add("display", "block");
            LoadSubscription();
        }
        public void LoadSubscription()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            SubsTable.DataSource = objBunyaad.SelectSubscribers(uname);
            SubsTable.DataBind();
        }
        protected void hideSubscription_Agents(object sender, EventArgs e)
        {
            Subscriptions_Agent.Style.Add("display", "none");
        }
        protected void SubscriptionGridView(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = SubsTable.Rows[index];
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string subs = row1.Cells[0].Text;
            Response.Redirect("~/visitProfile.aspx?username=" + subs);
        }
    }
}