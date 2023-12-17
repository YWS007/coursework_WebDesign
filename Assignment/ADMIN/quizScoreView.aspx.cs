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
    public partial class quizScoreView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadQuizListRecord();
                
            }
        }


        void LoadQuizListRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from quizTable", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }


        /*protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected quizID from GridView1
            GridViewRow row = GridView1.SelectedRow;
            string selectedQuizID = GridView1.DataKeys[row.RowIndex]["quizID"].ToString();

            // Load score records for the selected quizID
            LoadScoreRecord(selectedQuizID);
        }*/

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected quizID from GridView1
            GridViewRow row = GridView1.SelectedRow;
            string selectedQuizID = GridView1.DataKeys[row.RowIndex]["quizID"].ToString();

            // Add a debug message to check if the event is being called
            Response.Write("Event handler called. Selected QuizID: " + selectedQuizID);

            // Load score records for the selected quizID
            LoadScoreRecord(selectedQuizID);
        }


        void LoadScoreRecord(string selectedQuizID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT T.quiz, T.member, M.fname, M.lname, T.date, T.score FROM testTable T INNER JOIN memberTable M ON T.member = M.username WHERE T.quiz = @selectedQuizID";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@selectedQuizID", selectedQuizID);

            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();

            con.Close();

            // Check if there are records to display
            if (GridView2.Rows.Count == 0)
            {
                // No records found, show the errMsg label
                errMsg.Visible = true;
            }
            else
            {
                // Records found, hide the errMsg label
                errMsg.Visible = false;
            }
        }




    }
}