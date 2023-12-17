using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class contentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string courseID = GridView1.DataKeys[rowIndex]["courseID"].ToString();
                Session["courseID"] = courseID;
                Response.Redirect("manageCourseContent.aspx");
            }
        }

        void LoadRecord()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("select * from courseTable", con);
                SqlDataAdapter d = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            string selectedCourse = courseCategory.SelectedValue;

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();

                using (SqlDataAdapter da = new SqlDataAdapter("select * from courseTable where courseCategory = @SelectedCourse", con))
                {
                    da.SelectCommand.Parameters.AddWithValue("@SelectedCourse", selectedCourse);

                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}

