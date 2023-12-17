//using System;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.MEMBER
{
    public partial class WebForm12 : System.Web.UI.Page
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

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("testMemberLogin.aspx");
        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(fb.Text) && !string.IsNullOrWhiteSpace(ratingHiddenField.Value))
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "insert into feedbackTable (member, rating, feedback, status, date) " +
                               "values (@member, @rating, @feedback, @status, @date)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@member", Session["username"]);
                cmd.Parameters.AddWithValue("@rating", ratingHiddenField.Value); // Get the rating value from the hidden field
                cmd.Parameters.AddWithValue("@feedback", fb.Text);
                cmd.Parameters.AddWithValue("@status", "Pending");
                cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString("MM/dd/yyyy")); // Format the date

                cmd.ExecuteNonQuery();

                con.Close();

                // Display a success message
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Feedback submitted successfully.";

            }
            else
            {
                // Display an error message
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Please fill in both the rating and feedback fields.";
            }
        }
    }
}