using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("testAdminLogin.aspx");
            }


            qID.Text = "Quiz ID: " + Session["quizID"].ToString();

            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        private string HandleImageUpload()
        {
            string folderPath = Server.MapPath("~/QuestionPic/");
            string ImgPath = "";

            // Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exist, create it
                Directory.CreateDirectory(folderPath);
            }

            if (FileUpload1.HasFile)
            {
                ImgPath = "~/QuestionPic/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Path.Combine(folderPath, Path.GetFileName(FileUpload1.FileName)));
            }
            else
            {
                ImgPath = img.Text;
            }

            return ImgPath;
        }

        protected void add_Click(object sender, EventArgs e)
        {
            // Call the function to handle the image upload
            string ImgPath = HandleImageUpload();

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // Find the current maximum value of the 'num' column
                string countQuery = "select count (*) from questionTable where quizID = '" + Session["quizID"] + "'";
                SqlCommand cmdCount = new SqlCommand(countQuery, con);
                int num = Convert.ToInt32(cmdCount.ExecuteScalar().ToString());

                int newNum = num + 1;
                string quizID = Session["quizID"].ToString();
                string questionID = quizID + "Q" + newNum;

                //create record in a table call courseTable
                string query = "insert into questionTable (questionID, quizID, question, choice1, choice2, choice3, choice4, ans, questionType, image) " +
                        "values (@questionID, @quizID, @question, @choice1, @choice2, @choice3, @choice4, @ans, @questionType, @image) ";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@questionID", questionID);
                cmd.Parameters.AddWithValue("@quizID", Session["quizID"]);
                cmd.Parameters.AddWithValue("@question", question.Text);
                cmd.Parameters.AddWithValue("@choice1", choice1.Text);
                cmd.Parameters.AddWithValue("@choice2", choice2.Text);
                cmd.Parameters.AddWithValue("@choice3", choice3.Text);
                cmd.Parameters.AddWithValue("@choice4", choice4.Text);
                cmd.Parameters.AddWithValue("@ans", ans.Text);

                string questionType = string.Empty;
                if (rbMC.Checked)
                {
                    questionType = "Multiple Choice";
                }
                else if (rbTF.Checked)
                {
                    questionType = "True or False Question";
                }
                // Add the @questionType parameter and set its value
                cmd.Parameters.AddWithValue("@questionType", questionType);
                cmd.Parameters.AddWithValue("@image", ImgPath);
                cmd.ExecuteNonQuery(); //non-returning query
                // Maintain the scroll position after the update
                ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
                Response.Redirect("testQuestionManage.aspx");

            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Add question not successful!" + ex.ToString();
            }

        }

        void LoadRecord()
        {
            string quizID = Session["quizID"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Use a parameterized query to prevent SQL injection
            SqlCommand cmd = new SqlCommand("SELECT * FROM questionTable WHERE quizID = @quizID", con);
            cmd.Parameters.AddWithValue("@quizID", quizID);

            SqlDataAdapter d = new SqlDataAdapter(cmd);
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
                questionID.Text = GridView1.Rows[rowind].Cells[1].Text;

                string selectedValue = GridView1.Rows[rowind].Cells[2].Text;
                if (selectedValue == "Multiple Choice")
                {
                    rbMC.Checked = true;
                    rbTF.Checked = false;
                }
                else if (selectedValue == "True or False Question")
                {
                    rbMC.Checked = false;
                    rbTF.Checked = true;
                }
                else
                {
                    rbMC.Checked = false;
                    rbTF.Checked = false;
                }

                question.Text = GridView1.Rows[rowind].Cells[3].Text;
                choice1.Text = GridView1.Rows[rowind].Cells[4].Text;
                choice2.Text = GridView1.Rows[rowind].Cells[5].Text;
                choice3.Text = GridView1.Rows[rowind].Cells[6].Text;
                choice4.Text = GridView1.Rows[rowind].Cells[7].Text;
                ans.Text = GridView1.Rows[rowind].Cells[8].Text;
                Image1.ImageUrl = GridView1.Rows[rowind].Cells[9].Text;
                img.Text = GridView1.Rows[rowind].Cells[9].Text;

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
            rbMC.Checked = false;
            rbTF.Checked = false;
            question.Text = "";
            choice1.Text = "";
            choice2.Text = "";
            choice3.Text = "";
            choice4.Text = "";
            ans.Text = "";
            Image1.ImageUrl = "";
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            reset();
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string questionType = string.Empty;
            if (rbMC.Checked)
            {
                questionType = "Multiple Choice";
            }
            else if (rbTF.Checked)
            {
                questionType = "True or False Question";
            }

            // Call the function to handle the image upload
            string ImgPath = HandleImageUpload();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "update questionTable set question = '" + question.Text + "', questionType = '" + questionType + "', choice1 = '" + choice1.Text + "', choice2 = '" + choice2.Text + "', choice3 = '" + choice3.Text + "', choice4 = '" + choice4.Text + "', ans = '" + ans.Text + "', image = '" + ImgPath + "' where questionID = '" + questionID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery(); //non-returning query
            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
            Response.Redirect("testQuestionManage.aspx");
            LoadRecord();
            con.Close();
        }

        protected void delete_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();
                    string deletedQuestionID = questionID.Text;

                    // Delete the question
                    string deleteQuery = "delete from questionTable where questionID = '" + questionID.Text + "'";
                    SqlCommand deleteCmd = new SqlCommand(deleteQuery, con);
                    deleteCmd.ExecuteNonQuery();

                    // Renumber the remaining questions
                    RenumberQuestions(con);

                    // Clear the form
                    reset();
                }

                LoadRecord();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Delete question not successful!" + ex.ToString();
            }
        }

        private void RenumberQuestions(SqlConnection connection)
        {
            // Get the list of remaining questions
            string quizID = Session["quizID"].ToString();
            string selectQuery = "SELECT questionID FROM questionTable WHERE quizID = @quizID ORDER BY questionID";
            SqlCommand selectCmd = new SqlCommand(selectQuery, connection);
            selectCmd.Parameters.AddWithValue("@quizID", quizID);

            List<string> remainingQuestionIDs = new List<string>();
            using (SqlDataReader reader = selectCmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    remainingQuestionIDs.Add(reader["questionID"].ToString());
                }
            }

            // Update the questionIDs to be sequential
            for (int i = 0; i < remainingQuestionIDs.Count; i++)
            {
                string updateQuery = "UPDATE questionTable SET questionID = @newQuestionID WHERE questionID = @oldQuestionID";
                SqlCommand updateCmd = new SqlCommand(updateQuery, connection);
                updateCmd.Parameters.AddWithValue("@newQuestionID", quizID + "Q" + (i + 1));
                updateCmd.Parameters.AddWithValue("@oldQuestionID", remainingQuestionIDs[i]);
                updateCmd.ExecuteNonQuery();
            }
        }
    }
}