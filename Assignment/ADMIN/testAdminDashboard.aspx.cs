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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();
                PopulateChart();
            }
            else
            {
                Response.Redirect("testAdminLogin.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("testAdminLogin.aspx");
        }

        protected void PopulateChart()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();



            // Create a SqlCommand for each query
            string queryT = "SELECT COUNT(*) FROM testTable WHERE SUBSTRING(quiz, 2, 1) = 'T'";
            string queryW = "SELECT COUNT(*) FROM testTable WHERE SUBSTRING(quiz, 2, 1) = 'W'";
            string queryF = "SELECT COUNT(*) FROM testTable WHERE SUBSTRING(quiz, 2, 1) = 'F'";

            SqlCommand commandT = new SqlCommand(queryT, con);
            SqlCommand commandW = new SqlCommand(queryW, con);
            SqlCommand commandF = new SqlCommand(queryF, con);

            // Execute the queries
            int countT = (int)commandT.ExecuteScalar();
            int countW = (int)commandW.ExecuteScalar();
            int countF = (int)commandF.ExecuteScalar();

            // Close the connection
            con.Close();

            // Add data points to the chart
            Chart1.Series["Series1"].Points.AddXY("T", countT);
            Chart1.Series["Series1"].Points.AddXY("W", countW);
            Chart1.Series["Series1"].Points.AddXY("F", countF);

            // Customize the appearance of the chart area
            Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;


        }
    }
}