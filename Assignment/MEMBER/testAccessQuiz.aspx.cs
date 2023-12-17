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
    public partial class WebForm16 : System.Web.UI.Page
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
                // Load quiz questions from the database
                List<QuizQuestion> quizQuestions = LoadQuizQuestionsFromDatabase();

                // Bind the quizRepeater to the list of questions
                quizRepeater.DataSource = quizQuestions;
                quizRepeater.DataBind();

                // Set the current date in the currentDateLabel
                currentDate.Text = DateTime.Now.ToString("MM/dd/yyyy");

            }
        }
        private List<QuizQuestion> LoadQuizQuestionsFromDatabase()
        {
            List<QuizQuestion> quizQuestions = new List<QuizQuestion>();

            DataTable dt = new DataTable();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                string quizID = Session["quizID"].ToString();


                // Use a parameterized query to prevent SQL injection
                string query = "SELECT question, choice1, choice2, choice3, choice4, ans, questionType FROM questionTable WHERE quizID = @quizID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@quizID", quizID);

                SqlDataAdapter d = new SqlDataAdapter(cmd);
                d.Fill(dt);
            }

            foreach (DataRow row in dt.Rows)
            {
                QuizQuestion question = new QuizQuestion
                {
                    QuestionText = row["question"].ToString(),
                    QuestionType = DetermineQuestionType(row),
                    AnswerChoices = LoadAnswerChoices(row),
                    CorrectAnswer = row["ans"].ToString()
                };

                quizQuestions.Add(question);
            }

            return quizQuestions;
        }


        private QuestionType DetermineQuestionType(DataRow row)
        {
            // Use the "questionType" column from the database to determine the question type
            string questionType = row["questionType"].ToString();
            if (questionType.Equals("Multiple Choice", StringComparison.OrdinalIgnoreCase))
            {
                return QuestionType.MultipleChoice;
            }
            else if (questionType.Equals("True or False Question", StringComparison.OrdinalIgnoreCase))
            {
                return QuestionType.TrueFalse;
            }
            return QuestionType.Unknown;
        }

        private List<AnswerChoice> LoadAnswerChoices(DataRow row)
        {
            if (row["questionType"].ToString().Equals("True or False Question", StringComparison.OrdinalIgnoreCase))
            {
                // For True or False questions, create only two options
                List<AnswerChoice> trueFalseOptions = new List<AnswerChoice>
                {
                    new AnswerChoice { Text = row["choice1"].ToString(), Value = "A" },
                    new AnswerChoice { Text = row["choice2"].ToString(), Value = "B" },
                };

                return trueFalseOptions;
            }
            else
            {
                // For other question types, create four options
                List<AnswerChoice> answerChoices = new List<AnswerChoice>
                {
                    new AnswerChoice { Text = row["choice1"].ToString(), Value = "A" },
                    new AnswerChoice { Text = row["choice2"].ToString(), Value = "B" },
                    new AnswerChoice { Text = row["choice3"].ToString(), Value = "C" },
                    new AnswerChoice { Text = row["choice4"].ToString(), Value = "D" }
                };

                return answerChoices;
            }
        }


       
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("testMemberLogin.aspx");
        }



        public class QuizQuestion
        {
            public int QuestionID { get; set; }
            public string QuestionText { get; set; }
            public QuestionType QuestionType { get; set; }
            public List<AnswerChoice> AnswerChoices { get; set; }
            public string CorrectAnswer { get; set; }
        }


        public enum QuestionType
        {
            MultipleChoice,
            TrueFalse,
            Unknown,
        }

        public class AnswerChoice
        {
            public string Text { get; set; }
            public string Value { get; set; }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            int totalCorrectAnswers = 0;
            bool allQuestionsAnswered = true;

            foreach (RepeaterItem item in quizRepeater.Items)
            {
                var radioButtonList = (RadioButtonList)item.FindControl("answerChoicesRadioButtonList");
                var correctAnswer = ((Label)item.FindControl("correctAnswerLabel")).Text;

                if (radioButtonList != null)
                {
                    if (!string.IsNullOrEmpty(radioButtonList.SelectedValue))
                    {
                        string userAnswer = radioButtonList.SelectedValue;
                        if (userAnswer == correctAnswer)
                        {
                            totalCorrectAnswers++;
                        }
                    }
                    else
                    {
                        allQuestionsAnswered = false;
                    }

                }
            }

            if (allQuestionsAnswered)
            {
                msg.Visible = true;
                msg.Text = "Total Correct Answers: " + totalCorrectAnswers;
            }
            else
            {
                // Display a message asking the user to complete all questions
                msg.Visible = true;
                msg.Text = "Please complete all questions before submitting.";
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query1 = "insert into testTable (member, quiz, date, score) " +
                            "values (@member, @quiz, @date, @score) ";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            cmd1.Parameters.AddWithValue("@member", Session["username"]);
            cmd1.Parameters.AddWithValue("@quiz", Session["quizID"]);
            cmd1.Parameters.AddWithValue("@date", DateTime.Now.ToString("MM/dd/yyyy"));
            cmd1.Parameters.AddWithValue("@score", totalCorrectAnswers);
            cmd1.ExecuteNonQuery(); //non-returning query
        }
    }
}