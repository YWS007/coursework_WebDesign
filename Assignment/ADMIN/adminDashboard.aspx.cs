using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment.ADMIN
{
    public partial class adminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("adminLogin.aspx");
            }
        }

        /*protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("login.aspx");
        }*/

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("adminLogin.aspx");
        }
    }
}