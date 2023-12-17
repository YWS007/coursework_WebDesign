using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.MEMBER
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("~/VISITOR/testMemberLogin.aspx");
            }
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("~/VISITOR/testMemberLogin.aspx");
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Check if a record exists in the database
            SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM aboutInfoTable", con);
            int recordCount = (int)checkCmd.ExecuteScalar();

            if (recordCount > 0)
            {
                SqlCommand cmd2 = new SqlCommand("select * from aboutInfoTable", con);
                SqlDataAdapter d = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                d.Fill(dt);

                img.Text = dt.Rows[0][1].ToString();
                Image1.ImageUrl = dt.Rows[0][1].ToString();
                content.Text = dt.Rows[0][2].ToString();
                con.Close();
            }


        }
    }
}