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
    public partial class WebForm14 : System.Web.UI.Page
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

        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;  // Get the selected row index
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("chk");

            // Uncheck all other checkboxes
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex != rowind)
                {
                    CheckBox otherCheckbox = (CheckBox)row.FindControl("chk");
                    otherCheckbox.Checked = false;
                }
            }

            // Set the title based on the checked checkbox
            if (cb.Checked)
            {
                title.Text = GridView1.Rows[rowind].Cells[1].Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["title"] = title.Text;
            Response.Redirect("testAnnouncement.aspx");
        }
    }
}