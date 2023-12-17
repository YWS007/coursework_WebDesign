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
    public partial class WebForm7 : System.Web.UI.Page
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

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Selecting columns from both quizTable and contentTable using a JOIN
            SqlCommand cmd = new SqlCommand("SELECT q.*, c.title FROM quizTable q INNER JOIN contentTable c ON q.contentID = c.contentID", con);

            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("testMemberLogin.aspx");
        }

        protected void btnAttend_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            int rowind = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;  // Get the selected row index
            Button btnAttend = (Button)GridView1.Rows[rowind].FindControl("btnAttend");
            string quizID = GridView1.DataKeys[rowind]["quizID"].ToString();

            SqlCommand cmd1 = new SqlCommand("SELECT quizID FROM questionTable WHERE quizID = @quizID", con);
            cmd1.Parameters.AddWithValue("@quizID", quizID);

            // Check if the quizID exists in the questionTable
            using (SqlDataReader reader = cmd1.ExecuteReader())
            {
                if (reader.Read())
                {
                    // The quizID exists in the questionTable
                    Session["quizID"] = quizID;
                    Response.Redirect("testAccessQuiz.aspx");  // Navigation to the next page
                }
                else
                {
                    // The quizID does not exist in the questionTable
                    msg.Visible = true;
                    msg.ForeColor = System.Drawing.Color.Red;
                    msg.Text = "No quiz found for the selected quiz.";
                }
            }

            con.Close();
        }

    }
}