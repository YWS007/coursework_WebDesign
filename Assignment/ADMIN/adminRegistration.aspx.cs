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
    public partial class adminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            errMsg.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count (*) from adminTable where username = '" + username.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Username has been taken!";
                }
                else
                {
                    //create record in a table call userTable
                    string query1 = "insert into adminTable (fname, lname, gender, country, email, username, password) values (@firstName, @lastName, @gender, @country, @email, @username, @password) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    cmd1.Parameters.AddWithValue("@firstName", fname.Text);
                    cmd1.Parameters.AddWithValue("@lastName", lname.Text);
                    cmd1.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@country", country.Text);
                    cmd1.Parameters.AddWithValue("@email", email.Text);
                    cmd1.Parameters.AddWithValue("@username", username.Text);
                    cmd1.Parameters.AddWithValue("@password", psw.Text);
                    
                    cmd1.ExecuteNonQuery(); //non-returning query
                    Response.Redirect("adminLogin.aspx");  //navigation for next page

                }
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Registration not successful!" + ex.ToString();
            }
        }
    }
}