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
    public partial class WebForm15 : System.Web.UI.Page
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
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("testMemberLogin.aspx");
        }

        void LoadRecord()
        {
            if (Session["title"] != null)
            {
                string titleValue = Session["title"].ToString();

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    // Check if a record exists in the database with the specified title
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM announcementTable", con);
                    int recordCount = (int)checkCmd.ExecuteScalar();

                    if (recordCount > 0)
                    {
                        SqlCommand cmd2 = new SqlCommand("SELECT * FROM announcementTable WHERE title = @title", con);
                        cmd2.Parameters.AddWithValue("@title", titleValue);
                        SqlDataAdapter d = new SqlDataAdapter(cmd2);
                        DataTable dt = new DataTable();
                        d.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            title.Text = dt.Rows[0]["title"].ToString();
                            content.Text = dt.Rows[0]["content"].ToString();
                        }

                        con.Close();
                    }
                    else
                    {
                        msg.Visible = true;
                        msg.ForeColor = System.Drawing.Color.Red;
                        msg.Text = "There is no News!";
                    }
                }
            }
        }
    }
}