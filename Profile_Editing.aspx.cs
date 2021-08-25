using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Profile_Editing : System.Web.UI.Page
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

            lable_u.Visible = false;
            lable_u1.Visible = false;
        }
        protected void update_user_info(object sender, EventArgs e)
        {
            string city = City_ProfileEdit.Text;
            string profile_pic = Profile_Pic_ProfileEdit.Text;
            string name = Name_ProfileEdit.Text;
            string password = New_Password__ProfileEdit.Text;
            string c_password = Confirm_Password_ProfileEdit.Text;
            string user_name = Request.Cookies["user_login"].Value;
            bool PU = false;
            if (Checkbox_ProfileEdit.Checked)
            {
                PU = true;
            }
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            lable_u.Visible = false;
            if (password != c_password)
            {
                lable_u1.Text = "Passwords donot match";
                lable_u1.ForeColor = System.Drawing.Color.Red;
                lable_u1.Visible = true;
            }
            else
            {
                objBunyaad.update_user_info(user_name, city, name, password, profile_pic,PU);
                lable_u.Text = "Updated";
                lable_u.ForeColor = System.Drawing.Color.Green;
                lable_u.Visible = true;
            }
        }
        protected void hideUser_Info(object sender,EventArgs e)
        {
            User_Info_ProfileEdit.Style.Add("display", "Add");
        }


        protected void hideProperties_PE(object sender,EventArgs e)
        {
            Properties_ProfileEdit.Style.Add("display", "none");
        }

        protected void displayAdd_Properties_ProfileEdit(object sender, EventArgs e)
        {
            OnSaleDiv.Style.Add("display", "none");
            Notification_ProfileEdit.Style.Add("display", "none");
            Subscription_ProfileEdit.Style.Add("display", "none");
            User_Info_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "none");
            Remove_Properties_ProfileEdit.Style.Add("display", "none");
            Add_Properties_ProfileEdit.Style.Add("display", "block");
        }
        protected void Add_Property(object sender, EventArgs e)
        {
            String uname = Request.Cookies["user_login"].Value;
            String city = City_3_ProfileEdit.Text;
            String squareFeet = Sq_3_ProfileEdit.Text;
            int sq = Convert.ToInt32(squareFeet);
            String region = Region_3_ProfileEdit.Text;
            String Address = Address_3_ProfileEdit.Text;
            String description = Description_1_ProfileEdit.Text;
            String property_pic = Property_Pic_3_ProfileEdit.Text;
            String type = options.Text;
            Bunyaad_Dal obj = new Bunyaad_Dal();
            int ret = obj.AddProperty(uname, city, region,
                Address, sq, description, type, property_pic);
            if (ret != 1)
            {
                lable_u1.Text = "Succesfully Added";
                lable_u1.ForeColor = System.Drawing.Color.Green;
                lable_u1.Visible = true;
            }
            else
            {
                lable_u1.Text = "Could not add";
                lable_u1.ForeColor = System.Drawing.Color.Red;
                lable_u1.Visible = true;
            }
        }
        protected void hideAddProperty_ProfileEdit(object sender, EventArgs e)
        {
            Add_Properties_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "block");
        }

        protected void displayRemove_Properties_ProfileEdit(object sender, EventArgs e)
        {
            OnSaleDiv.Style.Add("display", "none");
            Add_Properties_ProfileEdit.Style.Add("display", "none");
            Notification_ProfileEdit.Style.Add("display", "none");
            Subscription_ProfileEdit.Style.Add("display", "none");
            User_Info_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "none");
            Remove_Properties_ProfileEdit.Style.Add("display", "block");
            LoadRemoveProperty();
        }
        public void LoadRemoveProperty()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            RemoveProperty_PE.DataSource = objBunyaad.SelectPropertyUser(uname);
            RemoveProperty_PE.DataBind();
        }
        protected void hideRemove_Properties_ProfileEdit(object sender, EventArgs e)
        {
            Remove_Properties_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "block");
        }
        protected void RemovePropertyPE_RowCommand(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = RemoveProperty_PE.Rows[index];

            Bunyaad_Dal obj = new Bunyaad_Dal();
            int ID = Convert.ToInt32(row1.Cells[0].Text);
            string uname = Request.Cookies["user_login"].Value;
            obj.DeletePropertyPE(uname, ID);
            LoadRemoveProperty();

        }

        protected void displayUser(object sender,EventArgs e)
        {
            OnSaleDiv.Style.Add("display", "none");
            Add_Properties_ProfileEdit.Style.Add("display", "none");
            Notification_ProfileEdit.Style.Add("display", "none");
            Subscription_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "none");
            Remove_Properties_ProfileEdit.Style.Add("display", "none");
            User_Info_ProfileEdit.Style.Add("display", "block");

            Bunyaad_Dal obj = new Bunyaad_Dal();
            string uname = Request.Cookies["user_login"].Value;
            int PU = obj.getPU(uname);
            if (PU == 1)
            {
                Checkbox_ProfileEdit.Checked = true;
            }
        }

        protected void displaySubscriptions_User(object sender, EventArgs e)
        {
            OnSaleDiv.Style.Add("display", "none");
            User_Info_ProfileEdit.Style.Add("display", "none");
            Remove_Properties_ProfileEdit.Style.Add("display", "none");
            Add_Properties_ProfileEdit.Style.Add("display", "none");
            Notification_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "none");
            Subscription_ProfileEdit.Style.Add("display", "block");
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
            Subscription_ProfileEdit.Style.Add("display", "none");
        }
        protected void Remove_Subs(object sender,
        GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = Subs_Table.Rows[index];

            Bunyaad_Dal obj = new Bunyaad_Dal();
            string agent = row1.Cells[0].Text;
            string uname = Request.Cookies["user_login"].Value;
            obj.DeleteSubscriptionsPE(uname, agent);
            LoadSubscriptions();
        }

        protected void hideNotification_ProfileEdit(object sender, EventArgs e)
        {
            Notification_ProfileEdit.Style.Add("display", "none");
        }
        protected void Notification_fun(object sender, EventArgs e)
        {
            lable_u.Visible = false;
            string uname = Request.Cookies["user_login"].Value;
            string city = City_2_ProfileEdit.Text;
            string region = Region_2_ProfileEdit.Text;
            string cl = not_drop.Text;
            int price;
            int sq_feet;
            if (Price_Limit_2_ProfileEdit.Text != "")
            {
                price = Convert.ToInt32(Price_Limit_2_ProfileEdit.Text);
            }
            else
            {
                price = -1;
            }
            if (Sq_2_ProfileEdit.Text != "")
            {
                sq_feet = Convert.ToInt32(Sq_2_ProfileEdit.Text);
            }
            else
            {
                sq_feet = -1;
            }
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            objBunyaad.notifications(uname, cl, city, region, price, sq_feet);

            lable_u.Text = "Updated";
            lable_u.ForeColor = System.Drawing.Color.Green;
            lable_u.Visible = true;

            Notification_ProfileEdit.Style.Add("display", "none");
        }

        protected void DeleteAccount(object sender,EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string uname = Request.Cookies["user_login"].Value;
            obj.DeleteUserAccount(uname);
            Response.Cookies["user_login"].Value = "";
            Response.Redirect("Sign_In.aspx");
        }

        protected void OnSale(object sender,EventArgs e)
        {
            User_Info_ProfileEdit.Style.Add("display", "none");
            Remove_Properties_ProfileEdit.Style.Add("display", "none");
            Add_Properties_ProfileEdit.Style.Add("display", "none");
            Notification_ProfileEdit.Style.Add("display", "none");
            Properties_ProfileEdit.Style.Add("display", "none");
            Subscription_ProfileEdit.Style.Add("display", "none");
            OnSaleDiv.Style.Add("display", "block");
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string uname = Request.Cookies["user_login"].Value;
            obj.OnSale(uname);
            LoadOnSale();
        }
        public void LoadOnSale()
        {
            string uname = Request.Cookies["user_login"].Value;
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            OnSaleGV.DataSource = objBunyaad.OnSale(uname);
            OnSaleGV.DataBind();
        }
        protected void RemoveSale(object sender,
       GridViewCommandEventArgs e)
        {
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = OnSaleGV.Rows[index];

            Bunyaad_Dal obj = new Bunyaad_Dal();
            int ID = Convert.ToInt32(row1.Cells[0].Text);
            string uname = Request.Cookies["user_login"].Value;
            obj.RemoveFromSale(ID);
            LoadOnSale();
        }
        protected void hideOnSale(object sender,EventArgs e)
        {
            OnSaleDiv.Style.Add("display", "none");
        }

    }
}