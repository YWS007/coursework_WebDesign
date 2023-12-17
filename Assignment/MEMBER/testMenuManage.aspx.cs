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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                LoadMenu();
                LoadFeedback();
            }
        }

       

        private void LoadMenu()
        {
            MenuDataAccess menuDataAccess = new MenuDataAccess();
            DataTable menuData = menuDataAccess.GetMenuItems();
            menuRepeater.DataSource = menuData;
            menuRepeater.DataBind();
        }

        private void LoadFeedback()
        {
            FeedbackDataAccess feedbackDataAccess = new FeedbackDataAccess();
            DataTable feedbackData = feedbackDataAccess.GetFeedback();
            feedbackRepeater.DataSource = feedbackData;
            feedbackRepeater.DataBind();
        }

        public class MenuDataAccess
        {
            private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            public DataTable GetMenuItems()
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT courseID, courseName, courseCategory, image FROM courseTable";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    DataTable menuTable = new DataTable();
                    adapter.Fill(menuTable);
                    return menuTable;
                }
            }
        }

        public class FeedbackDataAccess
        {
            private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            public DataTable GetFeedback()
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Select columns you need from feedbackTable and memberTable using JOIN
                    string query = "SELECT f.*, m.fname " +
                                   "FROM feedbackTable f " +
                                   "INNER JOIN memberTable m ON f.member = m.username";

                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    DataTable feedbackTable = new DataTable();
                    adapter.Fill(feedbackTable);
                    return feedbackTable;
                }
            }
        }
    }
}