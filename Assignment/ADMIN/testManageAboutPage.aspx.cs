using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class WebForm8 : System.Web.UI.Page
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

        private string HandleImageUpload()
        {
            string folderPath = Server.MapPath("~/ProfilePic/");
            string ImgPath = "";

            // Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exist, create it
                Directory.CreateDirectory(folderPath);
            }

            if (FileUpload1.HasFile)
            {
                ImgPath = "~/ProfilePic/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Path.Combine(folderPath, Path.GetFileName(FileUpload1.FileName)));
            }
            else
            {
                ImgPath = img.Text;
            }

            return ImgPath;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Validate that image and information are not empty
            if (FileUpload1.HasFile || !string.IsNullOrEmpty(information.Text.Trim()))
            {
                // Call the function to handle the image upload
                string ImgPath = HandleImageUpload();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // Check if a record exists in the database
                SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM aboutInfoTable", con);
                int recordCount = (int)checkCmd.ExecuteScalar();

                if (recordCount > 0)
                {
                    // If a record exists, update it
                    string query = "UPDATE aboutInfoTable SET image = @image, information = @information WHERE id = @id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@image", ImgPath);
                    cmd.Parameters.AddWithValue("@information", information.Text);
                    cmd.Parameters.AddWithValue("@id", id.Text);
                    cmd.ExecuteNonQuery();

                }
                else
                {
                    // If no record exists, insert a new record
                    string query1 = "insert into aboutInfoTable (image, information) values (@image, @information)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@image", ImgPath);
                    cmd1.Parameters.AddWithValue("@information", information.Text);
                    cmd1.ExecuteNonQuery();
                }

                con.Close();
                LoadRecord();
            }
            else
            {
                // Display error message if image or information is empty
                errMsg.Text = "Image and Information cannot be empty.";
            }
        }


        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Check if a record exists in the database
            SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM aboutInfoTable", con);
            int recordCount = (int)checkCmd.ExecuteScalar();

            if (recordCount > 0)
            {
                SqlCommand cmd2 = new SqlCommand("select * from aboutInfoTable", con);
                SqlDataAdapter d = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                d.Fill(dt);
                id.Text = dt.Rows[0][0].ToString();
                img.Text = dt.Rows[0][1].ToString();
                Image1.ImageUrl = dt.Rows[0][1].ToString();
                preview.Text = dt.Rows[0][2].ToString();
                con.Close();
            }


        }
    }
}