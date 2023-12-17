using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            errMsg.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Validation: Check if any required field is blank
                if (string.IsNullOrEmpty(fname.Text) ||
                    string.IsNullOrEmpty(lname.Text) ||
                    gender.SelectedIndex == 0 || // Assuming the first item is a placeholder, change as needed
                    string.IsNullOrEmpty(country.Text) ||
                    string.IsNullOrEmpty(email.Text) ||
                    string.IsNullOrEmpty(username.Text) ||
                    string.IsNullOrEmpty(psw.Text))
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Please fill in all required fields.";
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    // Check if the username is already taken
                    string query = "SELECT COUNT(*) FROM adminTable WHERE username = @username";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", username.Text);

                    int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                    if (check > 0)
                    {
                        errMsg.Visible = true;
                        errMsg.ForeColor = System.Drawing.Color.Red;
                        errMsg.Text = "Username has been taken!";
                    }
                    else
                    {
                        // Insert the record into the adminTable
                        string query1 = "INSERT INTO adminTable (fname, lname, gender, country, email, username, password) VALUES (@firstName, @lastName, @gender, @country, @email, @username, @password)";
                        SqlCommand cmd1 = new SqlCommand(query1, con);

                        // Add parameters for the insert query
                        cmd1.Parameters.AddWithValue("@firstName", fname.Text);
                        cmd1.Parameters.AddWithValue("@lastName", lname.Text);
                        cmd1.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
                        cmd1.Parameters.AddWithValue("@country", country.Text);
                        cmd1.Parameters.AddWithValue("@email", email.Text);
                        cmd1.Parameters.AddWithValue("@username", username.Text);
                        cmd1.Parameters.AddWithValue("@password", psw.Text);

                        cmd1.ExecuteNonQuery(); // Non-returning query
                        Response.Redirect("testAdminLogin.aspx");  // Navigation for the next page
                    }

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Registration not successful! " + ex.ToString();
            }
        }
    }
}