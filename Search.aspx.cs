using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Search : System.Web.UI.Page
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
        }
        protected void Button_Press(object sender, EventArgs e)
        {
            int sq;
            int price;
            if (Sq_Feet_Search.Text.Length!=0)
            {
                sq = Convert.ToInt32(Sq_Feet_Search.Text);
            }
            else
                sq = -1;
            string city = City_Search.Text;
            if (Price_Search.Text.Length!=0)
            {
                price = Convert.ToInt32(Price_Search.Text);
            }
            else
                price = -1;
            string uname = User_name_Search.Text;
            string fname = name.Text.ToLower();
            int option = Convert.ToInt32(Options_Search.SelectedValue);

            Bunyaad_Dal objBunyaad = new Bunyaad_Dal();

            string[,] ret;
            string search_name = Request.Cookies["user_login"].Value;
            string type = Request.Cookies["type"].Value;
            ret = objBunyaad.Search(uname, search_name, fname, sq, price, city, option, type);
            int count = 0;
            while (ret[count, 0] != null)
            {
                count++;
            }

            //We create our new div
            System.Web.UI.HtmlControls.HtmlGenericControl cont =
            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cont.ID = "cont"; //<---Give and ID to the div, very important!
            cont.Attributes.Add("class", "container");
            //We create our new div
            System.Web.UI.HtmlControls.HtmlGenericControl space =
            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            space.ID = "space"; //<---Give and ID to the div, very important!
            space.Attributes.Add("class", "col-1");
            int rows = (count / 3) + 1;
            int cards = 0;

            for (int j = 0; j < rows; j++)
            {
                System.Web.UI.HtmlControls.HtmlGenericControl row =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                row.ID = "row_" + Convert.ToString(j); //<---Give and ID to the div, very important!
                row.Attributes.Add("class", "row");
                //We create our new div
                for (int i = 0; i < 3; i++)
                {
                    if (cards >= count)
                    {
                        break;
                    }
                    WebControl a_tag = new WebControl(HtmlTextWriterTag.A);
                    string id = Convert.ToString(j) + "_" + Convert.ToString(i);
                    System.Web.UI.HtmlControls.HtmlGenericControl col =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    col.ID = "col_" + id; //<---Give and ID to the div, very important!
                    col.Attributes.Add("class", "col-4");
                    //We create our new div
                    System.Web.UI.HtmlControls.HtmlGenericControl div_1 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div_1.ID = "div_1_" + id; //<---Give and ID to the div, very important!
                    div_1.Attributes.Add("class", "card mt-5");
                    div_1.Style.Value = "background-color:black;width:15rem";
                    Image img = new Image();
                    img.Attributes.Add("class", "card-img-top ml-3");
                    img.Style.Value = "background-color: black; border-radius: 50%";
                    img.ImageUrl = "~/Images/avatar_m.png";
                    img.AlternateText = "Test image";
                    div_1.Controls.Add(img);

                    System.Web.UI.HtmlControls.HtmlGenericControl div_2 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div_2.ID = "div_2_" + id; //<---Give and ID to the div, very important!
                    div_2.Attributes.Add("class", "card-Body text-white");
                    div_2.Style.Value = "width : 200px";


                    WebControl H4Header = new WebControl(HtmlTextWriterTag.H3);
                    Label labHeader = new Label() { Text = "User"  };
                    labHeader.Attributes.Add("class", "card-title");
                    labHeader.Style.Value = "font-weigth:bold;margin-left:50px";
                    H4Header.Controls.Add(labHeader);

                    //ret[cards, 0]
                    WebControl t0 = new WebControl(HtmlTextWriterTag.P);
                    Label t09 = new Label() { Text = "@" + ret[cards, 0] };
                    t0.Attributes.Add("class", "card-text mt-1");
                    t0.Style.Value = "font-variant: small-caps;";
                    t0.Controls.Add(t09);


                    WebControl t1 = new WebControl(HtmlTextWriterTag.P);
                    Label t2 = new Label() { Text = ret[cards, 1] };
                    t1.Attributes.Add("class", "card-text mt-1");
                    t1.Style.Value = "font-variant: small-caps;";
                    t1.Controls.Add(t2);

                    WebControl t3 = new WebControl(HtmlTextWriterTag.P);
                    Label t4 = new Label() { Text = ret[cards, 2] };
                    t3.Attributes.Add("class", "card-text mt-1");
                    t3.Style.Value = "font-variant: small-caps;";
                    t3.Controls.Add(t4);

                    div_2.Controls.Add(H4Header);
                    div_2.Controls.Add(t0);
                    div_2.Controls.Add(t3);
                    div_2.Controls.Add(t1);
                    div_1.Controls.Add(div_2);
                    a_tag.Attributes.Add("href", "visitProfile.aspx?username=" + ret[cards, 0]);
                    a_tag.Style.Value = "text-decoration : none";
                    a_tag.Controls.Add(div_1);
                    col.Controls.Add(a_tag);
                    row.Controls.Add(col);
                    cards++;
                }
                cont.Controls.Add(row);
            }
            superDIV.Controls.Add(cont); //<---Add the new div to our already existing div
        }
        protected void check_user(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
        }
    }
}