using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class manageCourseContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                course.Text = (string)Session["courseID"];
            }

        }

        private string HandleImageUpload(FileUpload fileUpload, string imgText)
        {
            string folderPath = Server.MapPath("~/contentPic/");
            string imgPath = "";

            // Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exist, create it
                Directory.CreateDirectory(folderPath);
            }

            if (fileUpload.HasFile)
            {
                imgPath = "~/contentPic/" + fileUpload.FileName;
                fileUpload.SaveAs(Path.Combine(folderPath, Path.GetFileName(fileUpload.FileName)));
            }
            else
            {
                imgPath = imgText;
            }

            return imgPath;
        }


        protected void add_Click(object sender, EventArgs e)
        {
            string ImgPath1 = HandleImageUpload(FileUpload1, img1.Text);
            string ImgPath2 = HandleImageUpload(FileUpload2, img2.Text);
            string ImgPath3 = HandleImageUpload(FileUpload3, img3.Text);
            string ImgPath4 = HandleImageUpload(FileUpload4, img4.Text);

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string cID = (Session["courseID"] as string)?.Trim();
                // Generate the 'contentID' with the desired format
                string contentID = cID + "CH" + chapter.Text;

                // Check if contentID already exists
                string checkQuery = "SELECT COUNT(*) FROM contentTable WHERE contentID = @contentID";
                SqlCommand checkCmd = new SqlCommand(checkQuery, con);
                checkCmd.Parameters.AddWithValue("@contentID", contentID);
                int contentCount = Convert.ToInt32(checkCmd.ExecuteScalar());

                if (contentCount > 0)
                {
                    con.Close();
                    msg.Visible = true;
                    msg.ForeColor = System.Drawing.Color.Red;
                    msg.Text = "Content ID already exists!";
                    return; // Exit the method if contentID already exists
                }

                //create record in a table call courseTable
                string query1 = "insert into contentTable (contentID, courseID, title, content1, content2, content3, content4, image1, image2, image3, image4, video, chapter) " +
                        "values (@contentID, @courseID, @title, @content1, @content2, @content3, @content4, @image1, @image2, @image3, @image4, @video, @chapter) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                cmd1.Parameters.AddWithValue("@contentID", contentID);
                cmd1.Parameters.AddWithValue("@courseID", Session["courseID"]);
                cmd1.Parameters.AddWithValue("@title", title.Text);
                cmd1.Parameters.AddWithValue("@content1", content1.Text);
                cmd1.Parameters.AddWithValue("@content2", content2.Text);
                cmd1.Parameters.AddWithValue("@content3", content3.Text);
                cmd1.Parameters.AddWithValue("@content4", content4.Text);
                cmd1.Parameters.AddWithValue("@chapter", chapter.Text);
                cmd1.Parameters.AddWithValue("@video", video.Text);
                cmd1.Parameters.AddWithValue("@image1", ImgPath1);
                cmd1.Parameters.AddWithValue("@image2", ImgPath2);
                cmd1.Parameters.AddWithValue("@image3", ImgPath3);
                cmd1.Parameters.AddWithValue("@image4", ImgPath4);
                cmd1.ExecuteNonQuery(); //non-returning query

                con.Close();
                LoadRecord();

                Response.Write("<script>alert('Add Content successful!.');</script>");
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Add content successful!";
                // Maintain the scroll position after the update
                ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
            }

            catch (Exception ex)
            {
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Add content not successful!" + ex.ToString();
            }
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                chapter.Text = GridView1.Rows[rowIndex].Cells[1].Text;
                ch.Text = GridView1.Rows[rowIndex].Cells[1].Text;
                title.Text = GridView1.Rows[rowIndex].Cells[2].Text;

                // Get contentID from the DataKeys collection
                string contentID = GridView1.DataKeys[rowIndex]["contentID"].ToString();

                // Retrieve data from contentTable based on contentID
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM contentTable WHERE contentID = @contentID", con);
                    cmd.Parameters.AddWithValue("@contentID", contentID);
                    cID.Text = contentID;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        content1.Text = dt.Rows[0][3].ToString();
                        content2.Text = dt.Rows[0][4].ToString();
                        content3.Text = dt.Rows[0][5].ToString();
                        content4.Text = dt.Rows[0][6].ToString();
                        Image1.ImageUrl = dt.Rows[0][7].ToString();
                        img1.Text = dt.Rows[0][7].ToString();
                        Image2.ImageUrl = dt.Rows[0][8].ToString();
                        img2.Text = dt.Rows[0][8].ToString();
                        Image3.ImageUrl = dt.Rows[0][9].ToString();
                        img3.Text = dt.Rows[0][9].ToString();
                        Image4.ImageUrl = dt.Rows[0][10].ToString();
                        img4.Text = dt.Rows[0][10].ToString();
                        video.Text = dt.Rows[0][11].ToString();
                    }
                }
            }
        }


        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM contentTable WHERE courseId = @courseID", con);
            cmd2.Parameters.AddWithValue("@courseID", Session["courseID"] as string);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string ImgPath1 = HandleImageUpload(FileUpload1, img1.Text);
            string ImgPath2 = HandleImageUpload(FileUpload2, img2.Text);
            string ImgPath3 = HandleImageUpload(FileUpload3, img3.Text);
            string ImgPath4 = HandleImageUpload(FileUpload4, img4.Text);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();

                string query = "UPDATE contentTable SET contentID = @contentID, chapter = @chapter, title = @title, content1 = @content1, content2 = @content2, content3 = @content3, content4 = @content4," +
                    "image1 = @image1, image2 = @image2, image3 = @image3, image4 = @image4, video = @video WHERE contentID = @ContentID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    string newChapter = chapter.Text.Trim();
                    string existingChapter = ch.Text.Trim();

                    if (string.Compare(newChapter, existingChapter, StringComparison.OrdinalIgnoreCase) == 0)
                    {
                        // If the chapter is the same, use the existing contentID
                        cmd.Parameters.AddWithValue("@contentID", cID.Text);
                    }
                    else
                    {
                        // If the chapter is different, generate a new contentID
                        string ID = (Session["courseID"] as string)?.Trim();
                        string contentID = ID + "CH" + newChapter;
                        cmd.Parameters.AddWithValue("@contentID", contentID);
                    }

                    // Rest of your parameters...
                    cmd.Parameters.AddWithValue("@courseID", Session["courseID"]);
                    cmd.Parameters.AddWithValue("@title", title.Text);
                    cmd.Parameters.AddWithValue("@content1", content1.Text);
                    cmd.Parameters.AddWithValue("@content2", content2.Text);
                    cmd.Parameters.AddWithValue("@content3", content3.Text);
                    cmd.Parameters.AddWithValue("@content4", content4.Text);
                    cmd.Parameters.AddWithValue("@chapter", newChapter);
                    cmd.Parameters.AddWithValue("@video", video.Text);
                    cmd.Parameters.AddWithValue("@image1", ImgPath1);
                    cmd.Parameters.AddWithValue("@image2", ImgPath2);
                    cmd.Parameters.AddWithValue("@image3", ImgPath3);
                    cmd.Parameters.AddWithValue("@image4", ImgPath4);

                    cmd.ExecuteNonQuery(); //non-returning query
                }
            }

            LoadRecord();

            Response.Write("<script>alert('Edit Content successful!.');</script>");
            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Edit content successful!";
            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "delete from contentTable where contentID = @contentID";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@contentID", cID.Text);
            cmd.ExecuteNonQuery(); //non-returning query
            con.Close();
            LoadRecord();
            reset();

            Response.Write("<script>alert('Delete Content successful!.');</script>");
            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Delete course successful!";
        }

        protected void reset()
        {
            title.Text = "";
            chapter.Text = "";
            content1.Text = "";
            content2.Text = "";
            content3.Text = "";
            content4.Text = "";
            Image1.ImageUrl = "";
            img1.Text = "";
            Image2.ImageUrl = "";
            img2.Text = "";
            Image3.ImageUrl = "";
            img3.Text = "";
            Image4.ImageUrl = "";
            img4.Text = "";
            video.Text = "";
        }
    }
}