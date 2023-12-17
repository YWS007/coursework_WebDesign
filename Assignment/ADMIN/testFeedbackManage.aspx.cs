using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("testAdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadPendingRecord();
                LoadApproveRecord();
                LoadRejectRecord();
            }
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Get the ID from the DataKeys collection of the GridView
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            string idValue = GridView1.DataKeys[rowIndex]["member"].ToString();

            string query = "UPDATE feedbackTable SET status = 'approve' WHERE member = @member";

            SqlCommand cmd = new SqlCommand(query, con);

            // Define and set the parameter for @member
            cmd.Parameters.Add(new SqlParameter("@member", SqlDbType.VarChar));
            cmd.Parameters["@member"].Value = idValue;

            cmd.ExecuteNonQuery(); // Execute the SQL query

            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            LoadPendingRecord();
            LoadApproveRecord();
            con.Close();

            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Approve successful!";
        }



        protected void btnReject_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Get the ID from the DataKeys collection of the GridView
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            string idValue = GridView1.DataKeys[rowIndex]["member"].ToString();

            string query = "UPDATE feedbackTable SET status = 'reject' WHERE member = @member";

            SqlCommand cmd = new SqlCommand(query, con);

            // Define and set the parameter for @member
            cmd.Parameters.Add(new SqlParameter("@member", SqlDbType.VarChar));
            cmd.Parameters["@member"].Value = idValue;

            cmd.ExecuteNonQuery(); // Execute the SQL query

            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            LoadPendingRecord();
            LoadRejectRecord();
            con.Close();

            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Reject successful!";
        }

        void LoadPendingRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from feedbackTable where status = 'pending'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        void LoadApproveRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from feedbackTable where status = 'approve'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }

        void LoadRejectRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from feedbackTable where status = 'reject'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
            con.Close();
        }
    }
}