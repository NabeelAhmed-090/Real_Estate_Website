using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bunyaad.DAL;

namespace Bunyaad
{
    public partial class Feed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] get = new string[6];
            string[] deatils = new string[5];
            Bunyaad_Dal obj = new Bunyaad_Dal();
            get = obj.Feed();
            most_expensive.Text = get[0];
            least_expensive.Text = get[1];
            agent.Text = get[2];
            agent_subs.Text = get[3];
            prop.Text += get[4];
            prop_count.Text = get[5];

            deatils = obj.FeedProp();

            prop_1.Text = deatils[0];
            prop_2.Text = deatils[1];
            prop_3.Text = deatils[2];
            prop_4.Text = deatils[3];
            prop_5.Text = deatils[4];

        }
    }
}