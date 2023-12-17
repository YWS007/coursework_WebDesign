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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("testAdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from announcementTable", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "insert into announcementTable (title, content, date) " +
                        "values (@title, @content, @date) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                cmd1.Parameters.AddWithValue("@title", title.Text);
                cmd1.Parameters.AddWithValue("@content", content.Text);
                cmd1.Parameters.AddWithValue("@date", DateTime.Now.ToString("MM/dd/yyyy")); // Use @date for the date parameter

                cmd1.ExecuteNonQuery(); //non-returning query
                                        // Maintain the scroll position after the update
                ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

                LoadRecord();
                con.Close();

                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Blue;
                msg.Text = "Add announcement successful!";
            }
            catch (Exception ex)
            {
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Add announcement not successful: " + ex.ToString();
            }
        }



        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;  // Get the selected row index
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("chk");
            if (cb.Checked == true)
            {
                sTitle.Text = GridView1.Rows[rowind].Cells[1].Text;
                title.Text = GridView1.Rows[rowind].Cells[1].Text;
                content.Text = GridView1.Rows[rowind].Cells[2].Text;
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
            title.Text = "";
            content.Text = "";
            sTitle.Text = "";
        }

        protected void bReset_Click(object sender, EventArgs e)
        {
            reset();
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "update announcementTable set title = '" + title.Text + "', content = '" + content.Text + "', date = '" + DateTime.Now.ToString("MM/dd/yyyy") + "' where title = '" + sTitle.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery(); //non-returning query
            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            LoadRecord();
            con.Close();

            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Blue; // Change the color to indicate success
            msg.Text = "Edit successful!";
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "delete from announcementTable where title = '" + sTitle.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery(); //non-returning query
            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            con.Close();
            LoadRecord();
            reset();

            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Blue; // Change the color to indicate success
            msg.Text = "Delete successful!";
        }
    }
}