using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class View_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string name = Request.QueryString["username"].ToString();
                string u1 = Request.Cookies["user_login"].Value;
                Bunyaad_Dal obj = new Bunyaad_Dal();
                int check = obj.checkAccount(u1);
                int c1 = obj.checkAccount(name);
                if (check == 1)
                {
                    Response.Redirect("Sign_In.aspx");
                }
                if (c1 == 1)
                {
                    Response.Redirect("Search.aspx");
                }
                string type = obj.checkType(name);
                if (type == "normal")
                {
                    rate_div.Style.Add("display", "none");
                    subButton.Style.Add("display", "none");
                }
                string[] ret = new string[3];
                ret = obj.visitProfile(name);
                if (ret[0] != null)
                {
                    string subs_name = Request.Cookies["user_login"].Value;
                    check = obj.checkSubscriber(name, subs_name);
                    if (check == 1)
                    {
                        subButton.Style.Value = "background-color : #700000;margin-left: 220px; margin-top: 30px; border-radius: 35px;";
                    }
                    check = obj.checkRate(name, subs_name);
                    showStars(check);
                    uname.Text = "@" + name;
                    fname.Text = ret[0];
                    city.Text = ret[1];
                    Property_count.Text = "Properties : " + ret[2];
                    loadGrid();
                }
            }
        }

        public void loadGrid()
        {
            string name = Request.QueryString["username"].ToString();
            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
            view_profile_table.DataSource = objBunyaad.VisitProfile_Table(name);
            view_profile_table.DataBind();
        }
        protected void subscriber(object sender, EventArgs e)
        {
            string subscriber_name = Request.Cookies["user_login"].Value;
            Bunyaad_Dal obj = new Bunyaad_Dal();
            int check = obj.checkAccount(subscriber_name);
            if (check == 1)
            {
                Response.Redirect("Search.aspx");
            }
            
            string agent_name = Request.QueryString["username"].ToString();



            check = obj.subscriber(subscriber_name, agent_name);

            if (check == 0)
            {
                subButton.Style.Value = "background-color : rgba(0,0,0,0);margin-left: 220px; margin-top: 30px; border-radius: 35px;";
            }
            else
            {
                subButton.Style.Value = "background-color : #700000;margin-left: 220px; margin-top: 30px; border-radius: 35px;";
            }
        }
        protected void rate(object sender, EventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string uname = Request.QueryString["username"].ToString();
            int check = obj.checkAccount(uname);
            if (check == 1)
            {
                Response.Redirect("Search.aspx");
            }

            string agent = Request.QueryString["username"].ToString();
            string get = Request.Cookies.Get("index").Value;
            int stars = Convert.ToInt32(get);
            obj.rate(agent, uname, stars);
            showStars(stars);
        }
        public void showStars(int stars)
        {
            starU1.Style.Value = "display:none";
            starU2.Style.Value = "display:none";
            starU3.Style.Value = "display:none";
            starU4.Style.Value = "display:none";
            starU5.Style.Value = "display:none";


            starV1.Style.Value = "display:none";
            starV2.Style.Value = "display:none";
            starV3.Style.Value = "display:none";
            starV4.Style.Value = "display:none";
            starV5.Style.Value = "display:none";
            if (stars == 5)
            {
                starV1.Style.Value = "display:block";
                starV2.Style.Value = "display:block";
                starV3.Style.Value = "display:block";
                starV4.Style.Value = "display:block";
                starV5.Style.Value = "display:block";
            }
            else if (stars == 4)
            {
                starV1.Style.Value = "display:block";
                starV2.Style.Value = "display:block";
                starV3.Style.Value = "display:block";
                starV4.Style.Value = "display:block";
                starU5.Style.Value = "display:block";
            }
            else if (stars == 3)
            {
                starV1.Style.Value = "display:block";
                starV2.Style.Value = "display:block";
                starV3.Style.Value = "display:block";
                starU4.Style.Value = "display:block";
                starU5.Style.Value = "display:block";
            }
            else if (stars == 2)
            {
                starV1.Style.Value = "display:block";
                starV2.Style.Value = "display:block";
                starU3.Style.Value = "display:block";
                starU4.Style.Value = "display:block";
                starU5.Style.Value = "display:block";
            }
            else if (stars == 1)
            {
                starV1.Style.Value = "display:block";
                starU2.Style.Value = "display:block";
                starU3.Style.Value = "display:block";
                starU4.Style.Value = "display:block";
                starU5.Style.Value = "display:block";
            }
            else
            {
                starU1.Style.Value = "display:block";
                starU2.Style.Value = "display:block";
                starU3.Style.Value = "display:block";
                starU4.Style.Value = "display:block";
                starU5.Style.Value = "display:block";
            }
        }
        protected void Select_Property(object sender,
        GridViewCommandEventArgs e)
        {
            Bunyaad_Dal obj = new Bunyaad_Dal();
            string uname = Request.QueryString["username"].ToString();
            int check = obj.checkAccount(uname);
            if (check == 1)
            {
                Response.Redirect("Search.aspx");
            }
            GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            int index = row.RowIndex;
            GridViewRow row1 = view_profile_table.Rows[index];
            string ID = row1.Cells[0].Text;
            Response.Cookies["owner"].Value = row1.Cells[1].Text;
            Response.Redirect("~/Property.aspx?ID=" + ID);
        }
    }
}