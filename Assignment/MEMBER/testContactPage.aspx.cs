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
    public partial class WebForm13 : System.Web.UI.Page
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
        protected void bSubmit_Click(object sender, EventArgs e)
        {
            string nameValue = name.Text.Trim();
            string emailValue = email.Text.Trim();
            string messageValue = message.Text.Trim();

            if (string.IsNullOrEmpty(nameValue) || string.IsNullOrEmpty(emailValue) || string.IsNullOrEmpty(messageValue))
            {
                // Display an error message if any field is empty
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Please fill in all sections.";
            }
            else
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    string query = "INSERT INTO contactUsTable (name, email, message, status, date) " +
                                   "VALUES (@name, @email, @message, @status, @date)";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@name", nameValue);
                    cmd.Parameters.AddWithValue("@email", emailValue);
                    cmd.Parameters.AddWithValue("@message", messageValue);
                    cmd.Parameters.AddWithValue("@status", "new");
                    cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString("MM/dd/yyyy"));
                    cmd.ExecuteNonQuery();

                    // Display a success message
                    msg.Visible = true;
                    msg.ForeColor = System.Drawing.Color.Red;
                    msg.Text = "Submit successful! An admin will contact you within 3 business days.";
                }
            }
        }


    }
}