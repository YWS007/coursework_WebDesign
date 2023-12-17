using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class quizManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from contentTable ", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cID.DataSource = dt;
                cID.DataTextField = "contentID";
                DataBind();
                LoadRecord();
            }

        }

        protected void add_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Find the current maximum value of the 'num' column
            string selectMaxQuery = "SELECT MAX(num) FROM quizTable";
            SqlCommand cmdMax = new SqlCommand(selectMaxQuery, con);
            int currentMaxNum = 0;

            object result = cmdMax.ExecuteScalar();
            if (result != DBNull.Value)
            {
                currentMaxNum = Convert.ToInt32(result);
            }
            else
            {
                currentMaxNum = 0;
            }

            // Increment the value to get the next 'num' value
            int nextNum = currentMaxNum + 1;

            // Generate the 'quizID' with the desired format
            string quizCategory = category.SelectedItem.ToString();
            string firstChar = quizCategory.Substring(0, 1);
            string quizID = "q" + firstChar + nextNum;

            // Create a record in the quizTable
            string insertQuery = "INSERT INTO quizTable (quizID, quizName, quizCategory, questionNumber, contentID) " +
                "VALUES (@quizID, @quizName, @quizCategory, @questionNumber, @contentID) ";
            SqlCommand cmd1 = new SqlCommand(insertQuery, con);

            cmd1.Parameters.AddWithValue("@quizID", quizID);
            cmd1.Parameters.AddWithValue("@quizName", quizName.Text);
            cmd1.Parameters.AddWithValue("@quizCategory", category.SelectedItem.ToString());
            cmd1.Parameters.AddWithValue("@questionNumber", questionNum.Text);
            cmd1.Parameters.AddWithValue("@contentID", cID.SelectedValue);

            // Execute the INSERT query
            cmd1.ExecuteNonQuery();
            con.Close();
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from quizTable", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;  // Get the selected row index
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("chk");
            if (cb.Checked == true)
            {
                quizID.Text = GridView1.Rows[rowind].Cells[1].Text;
                quizName.Text = GridView1.Rows[rowind].Cells[2].Text;

                // Set the selected value for the quizCategory DropDownList
                string selectedValue1 = GridView1.Rows[rowind].Cells[3].Text;
                category.SelectedValue = selectedValue1;

                questionNum.Text = GridView1.Rows[rowind].Cells[4].Text;

                string selectedValue2 = GridView1.Rows[rowind].Cells[5].Text;
                cID.SelectedValue = selectedValue2;

            }
            else
            {
                reset();
                // Maintain the scroll position after the update
                ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
            }
        }

        protected void reset()
        {
            cID.ClearSelection();
            quizName.Text = "";
            category.ClearSelection(); // Clear the selected item in the DropDownList
            questionNum.Text = "";
            quizID.Text = "";

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Find the current maximum value of the 'num' column
            string query1 = "SELECT num FROM quizTable where quizID = '" + quizID.Text + "'";
            SqlCommand cmdMax = new SqlCommand(query1, con);
            int currentMaxNum = 0;

            object result = cmdMax.ExecuteScalar();
            currentMaxNum = Convert.ToInt32(result);
            
            // Increment the value to get the next 'num' value
            int nextNum = currentMaxNum;

            // Generate the 'quizID' with the desired format
            string quizCategory = category.SelectedItem.ToString();
            string firstChar = quizCategory.Substring(0, 1);
            string qID = "q" + firstChar + nextNum;


            string query = "update quizTable set quizName = '" + quizName.Text + "', quizCategory = '" + category.SelectedItem.ToString() + "', questionNumber = '" + questionNum.Text + "', contentID = '" + cID.SelectedItem.ToString() + "',quizID = '" + qID + "' where quizID = '" + quizID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery(); //non-returning query
            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
            Response.Redirect("quizManage.aspx");
            LoadRecord();
            con.Close();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();

                // Start a SQL transaction
                SqlTransaction transaction = con.BeginTransaction();

                try
                {
                    // Delete related records in the questionTable
                    string deleteQuestionsQuery = "DELETE FROM questionTable WHERE quizID = @quizID";
                    using (SqlCommand cmdQuestions = new SqlCommand(deleteQuestionsQuery, con, transaction))
                    {
                        cmdQuestions.Parameters.AddWithValue("@quizID", quizID.Text);
                        cmdQuestions.ExecuteNonQuery();
                    }

                    // Delete the quiz record
                    string deleteQuizQuery = "DELETE FROM quizTable WHERE quizID = @quizID";
                    using (SqlCommand cmdQuiz = new SqlCommand(deleteQuizQuery, con, transaction))
                    {
                        cmdQuiz.Parameters.AddWithValue("@quizID", quizID.Text);
                        cmdQuiz.ExecuteNonQuery();
                    }

                    // Commit the transaction if everything is successful
                    transaction.Commit();

                    // Maintain the scroll position after the update
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

                    LoadRecord();
                    reset();
                }
                catch (Exception ex)
                {
                    // An error occurred, roll back the transaction
                    transaction.Rollback();

                    // Handle or log the exception
                    Debug.WriteLine("Error: " + ex.Message);
                }
            }
        }


        protected void manageQuestion_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(quizName.Text))
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Please select a Quiz!";

            }
            else
            {
                Session["quizID"] = quizID.Text;
                Response.Redirect("questionManage.aspx");
            }
        }
    }
}