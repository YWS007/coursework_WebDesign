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
    public partial class WebForm5 : System.Web.UI.Page
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
                MenuDataAccess menuDataAccess = new MenuDataAccess();
                DataTable teaMenuItems = menuDataAccess.GetTeaMenuItems();

                // Bind the DataTable to your Repeater or any other data-bound control
                Repeater1.DataSource = teaMenuItems;
                Repeater1.DataBind();
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("testMemberLogin.aspx");
        }

        protected void btnSelect_Command(object sender, CommandEventArgs e)
        {
            // Retrieve the clicked courseID from the CommandArgument
            string courseID = e.CommandArgument.ToString();

            // Store the courseID in the Session
            Session["SelectedCourseID"] = courseID;

            // Redirect to the next page
            Response.Redirect("testTeaContent.aspx");
        }

        public class MenuDataAccess
        {
            private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            public DataTable GetTeaMenuItems()
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT courseID, courseName, courseCategory, image FROM courseTable WHERE courseCategory = 'Tea'";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    DataTable teaMenuTable = new DataTable();
                    adapter.Fill(teaMenuTable);
                    return teaMenuTable;
                }
            }
        }
    }
}