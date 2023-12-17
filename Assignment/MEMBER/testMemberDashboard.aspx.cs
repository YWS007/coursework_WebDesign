using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Assignment.MEMBER
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();

                LoadTeaChart();
                LoadFestivalChart();
                LoadWushuChart();
            }
            else
            {
                Response.Redirect("~/VISITOR/testMemberLogin.aspx");
            }
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("testMemberLogin.aspx");
        }



        private void LoadTeaChart()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();

            // Specify the desired courseCategory, for example, "Tea"
            string desiredCourseCategory = "Tea";


            // Query to count quizzes in quizTable with quizCategory "Tea"
            string countQuizzesQuery = "SELECT COUNT(quizID) AS TotalQuizCount FROM quizTable WHERE quizCategory = @courseCategory";
            SqlCommand countQuizzesCommand = new SqlCommand(countQuizzesQuery, con);
            countQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int totalQuizCount = (int)countQuizzesCommand.ExecuteScalar();

            // Query to count quizzes attended by a member in testTable with quizCategory "Tea"
            string countAttendedQuizzesQuery = "SELECT COUNT(DISTINCT t.quiz) AS AttendedQuizCount " +
                                               "FROM testTable t " +
                                               "JOIN quizTable q ON t.quiz = q.quizID " +
                                               "WHERE t.member = @member AND q.quizCategory = @courseCategory";
            SqlCommand countAttendedQuizzesCommand = new SqlCommand(countAttendedQuizzesQuery, con);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@member", Session["username"]);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int attendedQuizCount = (int)countAttendedQuizzesCommand.ExecuteScalar();


            // Initialize Chart data
            Chart1.Series["Series1"].Points.Clear();
            // Check if totalQuizCount is not zero to avoid DivideByZeroException
            double completePercentage = (totalQuizCount != 0) ? (attendedQuizCount / totalQuizCount) * 100 : 0;
            tl.Text = "Complete: " + completePercentage + "%";

            // Add data points to the series
            DataPoint dp = new DataPoint();
            dp.AxisLabel = desiredCourseCategory;
            dp.YValues = new double[] { totalQuizCount, attendedQuizCount };
            dp.Label = $"{completePercentage:F2}%"; // Add label for the completion percentage
            Chart1.Series["Series1"].Points.Add(dp);
            con.Close();
        }


        private void LoadWushuChart()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();


            string desiredCourseCategory = "Wushu";



            string countQuizzesQuery = "SELECT COUNT(quizID) AS TotalQuizCount FROM quizTable WHERE quizCategory = @courseCategory";
            SqlCommand countQuizzesCommand = new SqlCommand(countQuizzesQuery, con);
            countQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int totalQuizCount = (int)countQuizzesCommand.ExecuteScalar();


            string countAttendedQuizzesQuery = "SELECT COUNT(DISTINCT t.quiz) AS AttendedQuizCount " +
                                               "FROM testTable t " +
                                               "JOIN quizTable q ON t.quiz = q.quizID " +
                                               "WHERE t.member = @member AND q.quizCategory = @courseCategory";
            SqlCommand countAttendedQuizzesCommand = new SqlCommand(countAttendedQuizzesQuery, con);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@member", Session["username"]);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int attendedQuizCount = (int)countAttendedQuizzesCommand.ExecuteScalar();


            double completePercentage = 0.00;

            if (totalQuizCount != 0)
            {
                completePercentage = (attendedQuizCount / totalQuizCount) * 100;
                wl.Text = "Complete: " + completePercentage.ToString("0.00") + "%";
            }
            else
            {
                
                wl.Text = "Complete: " + completePercentage.ToString("0.00") + "%";
            }

            // Add data points to the series
            DataPoint dp = new DataPoint();
            dp.AxisLabel = desiredCourseCategory;
            dp.YValues = new double[] { totalQuizCount, attendedQuizCount };
            dp.Label = $"{completePercentage:F2}%"; // Add label for the completion percentage
            Chart2.Series["Series2"].Points.Add(dp);
            con.Close();
        }


        private void LoadFestivalChart()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();


            string desiredCourseCategory = "Festival";



            string countQuizzesQuery = "SELECT COUNT(quizID) AS TotalQuizCount FROM quizTable WHERE quizCategory = @courseCategory";
            SqlCommand countQuizzesCommand = new SqlCommand(countQuizzesQuery, con);
            countQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int totalQuizCount = (int)countQuizzesCommand.ExecuteScalar();


            string countAttendedQuizzesQuery = "SELECT COUNT(DISTINCT t.quiz) AS AttendedQuizCount " +
                                               "FROM testTable t " +
                                               "JOIN quizTable q ON t.quiz = q.quizID " +
                                               "WHERE t.member = @member AND q.quizCategory = @courseCategory";
            SqlCommand countAttendedQuizzesCommand = new SqlCommand(countAttendedQuizzesQuery, con);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@member", Session["username"]);
            countAttendedQuizzesCommand.Parameters.AddWithValue("@courseCategory", desiredCourseCategory);
            int attendedQuizCount = (int)countAttendedQuizzesCommand.ExecuteScalar();


            // Initialize Chart data
            Chart3.Series["Series3"].Points.Clear();
            double completePercentage = (attendedQuizCount / totalQuizCount) * 100;
            fl.Text = "Complete: " + completePercentage + "%";

            // Add data points to the series
            DataPoint dp = new DataPoint();
            dp.AxisLabel = desiredCourseCategory;
            dp.YValues = new double[] { totalQuizCount, attendedQuizCount };
            dp.Label = $"{completePercentage:F2}%"; // Add label for the completion percentage
            Chart3.Series["Series3"].Points.Add(dp);
            con.Close();
        }
    }
}