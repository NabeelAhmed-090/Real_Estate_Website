using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void Button_Press(object sender, EventArgs e)
        //{

        //    Bunyaad_Dal objBunyaad = new Bunyaad_Dal();
        //    string name = "Nabeel";
        //    string fname = "Ahmed";
        //    string[,] ret;
        //    ret = objBunyaad.Search(name,fname);
        //    int count = 0;
        //    while (ret[count, 0] != null)
        //    {
        //        count++;
        //    }

        //    //We create our new div
        //    System.Web.UI.HtmlControls.HtmlGenericControl cont =
        //    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //    cont.ID = "cont"; //<---Give and ID to the div, very important!
        //    cont.Attributes.Add("class", "container");
        //    //We create our new div
        //    System.Web.UI.HtmlControls.HtmlGenericControl space =
        //    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //    space.ID = "space"; //<---Give and ID to the div, very important!
        //    space.Attributes.Add("class", "col-1");
        //    int rows = (count / 3) + 1;
        //    int cards = 0;
        //    for (int j = 0; j < rows; j++)
        //    {
        //        System.Web.UI.HtmlControls.HtmlGenericControl row =
        //        new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //        row.ID = "row"; //<---Give and ID to the div, very important!
        //        row.Attributes.Add("class", "row");
        //        //We create our new div
        //        for (int i = 0; i < 3; i++)
        //        {
        //            if (cards >= count)
        //            {
        //                break;
        //            }
        //            System.Web.UI.HtmlControls.HtmlGenericControl col =
        //            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //            col.ID = "col"; //<---Give and ID to the div, very important!
        //            col.Attributes.Add("class", "col-4");
        //            //We create our new div
        //            System.Web.UI.HtmlControls.HtmlGenericControl div_1 =
        //            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //            div_1.ID = "div_1"; //<---Give and ID to the div, very important!
        //            div_1.Attributes.Add("class", "card mt-5");
        //            div_1.Style.Value = "background-color:black;width:12rem";
        //            Image img = new Image();
        //            img.Attributes.Add("class", "card-img-top");
        //            img.Style.Value = "background-color: black; border-radius: 50%";
        //            img.ImageUrl = "~/Images/avatar_m.png";
        //            img.AlternateText = "Test image";
        //            div_1.Controls.Add(img);

        //            System.Web.UI.HtmlControls.HtmlGenericControl div_2 =
        //            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        //            div_2.ID = "div_2"; //<---Give and ID to the div, very important!
        //            div_2.Attributes.Add("class", "card-Body text-white");


        //            WebControl H4Header = new WebControl(HtmlTextWriterTag.H5);
        //            Label labHeader = new Label() { Text = "@"+ret[cards,0] };
        //            labHeader.Attributes.Add("class", "card-title ml-3");
        //            labHeader.Style.Value = "font-weigth:bold;";
        //            H4Header.Controls.Add(labHeader);
        //            WebControl butt = new WebControl(HtmlTextWriterTag.A);
        //            Label B = new Label() { Text = "View" };
        //            butt.Attributes.Add("href", "User.aspx");
        //            butt.Attributes.Add("Text", "Jump");
        //            butt.Style.Value = "float:right";
        //            butt.Attributes.Add("class", "btn btn-success mb-1 mr-1");
        //            butt.Controls.Add(B);

        //            WebControl t1 = new WebControl(HtmlTextWriterTag.P);
        //            Label t2 = new Label() { Text = ret[cards,1] };
        //            t2.Attributes.Add("class", "card-text ml-1 mt-1");
        //            t1.Controls.Add(t2);

        //            WebControl t3 = new WebControl(HtmlTextWriterTag.P);
        //            Label t4 = new Label() { Text = ret[cards, 2] };
        //            t3.Attributes.Add("class", "card-text ml-1 mt-1");
        //            t3.Controls.Add(t4);

        //            div_2.Controls.Add(H4Header);
        //            div_2.Controls.Add(t1);
        //            div_2.Controls.Add(t3);
        //            div_2.Controls.Add(butt);
        //            div_1.Controls.Add(div_2);

        //            col.Controls.Add(div_1);
        //            row.Controls.Add(col);
        //            cards++;
        //        }
        //        cont.Controls.Add(row);
        //    }
        //    superDIV.Controls.Add(cont); //<---Add the new div to our already existing div

        //}
        protected void testing(object sender, EventArgs e)
        {
            string get = Request.Cookies.Get("index").Value;
        }
    }
}
