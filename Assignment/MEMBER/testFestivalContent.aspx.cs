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
    public partial class WebForm11 : System.Web.UI.Page
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
                cID.Text = (string)Session["SelectedCourseID"];
                LoadRecord();
                firstPage();

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("~/VISITOR/testMemberLogin.aspx");
        }

        private void loadVideo(string txtYouTubeLink)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();


            string youtubeLink = txtYouTubeLink.Trim();

            if (!string.IsNullOrEmpty(youtubeLink))
            {
                // Parse YouTube video ID from the link
                string videoId = GetYouTubeVideoId(youtubeLink);

                if (!string.IsNullOrEmpty(videoId))
                {
                    // Generate the YouTube video embed code
                    string embedCode = $"<iframe width='560' height='315' src='https://www.youtube.com/embed/{videoId}' frameborder='0' allowfullscreen></iframe>";

                    // Display the embedded video in the Panel
                    videoPanel.Controls.Clear();
                    videoPanel.Controls.Add(new LiteralControl(embedCode));
                }

            }

        }


        private string GetYouTubeVideoId(string youtubeLink)
        {
            try
            {
                // Attempt to create a Uri object
                Uri uri = new Uri(youtubeLink);

                // Check if the host is from YouTube
                if (uri.Host == "www.youtube.com" || uri.Host == "youtube.com" || uri.Host == "m.youtube.com" || uri.Host == "youtu.be")
                {
                    // Parse the video ID from the YouTube link
                    string videoId = string.Empty;

                    if (uri.Host == "youtu.be")
                    {
                        // Handle youtu.be links
                        videoId = uri.AbsolutePath.TrimStart('/');
                    }
                    else if (uri.AbsolutePath.StartsWith("/embed/"))
                    {
                        // Handle embedded links
                        videoId = uri.AbsolutePath.Substring("/embed/".Length);
                    }
                    else
                    {
                        // Handle standard YouTube links
                        string query = uri.Query;
                        string[] parameters = query.Split('&');

                        foreach (string param in parameters)
                        {
                            if (param.StartsWith("v="))
                            {
                                videoId = param.Substring(2);
                                break;
                            }
                        }
                    }

                    return videoId;
                }

                // If the host is not YouTube or the video ID is not found, return an empty string
                return string.Empty;
            }
            catch (UriFormatException)
            {
                // Handle the case where the input is not a valid URI
                return string.Empty;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                // Get contentID from the DataKeys collection
                string contentID = GridView1.DataKeys[rowIndex]["contentID"].ToString();

                cID.Text = contentID;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM contentTable WHERE contentID = @contentID", con);
                cmd.Parameters.AddWithValue("@contentID", contentID);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                title.Text = dt.Rows[0][2].ToString();
                cont1.Text = dt.Rows[0][3].ToString();
                cont2.Text = dt.Rows[0][4].ToString();
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
                string YouTubeLink = dt.Rows[0][11].ToString();
                loadVideo(YouTubeLink);

                st1.Text = dt.Rows[0][13].ToString();
                st2.Text = dt.Rows[0][14].ToString();
                st3.Text = dt.Rows[0][15].ToString();
                st4.Text = dt.Rows[0][16].ToString();


                con.Close();
            }
        }



        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Check if the courseID is stored in the session
            if (Session["SelectedCourseID"] != null)
            {
                // Use a parameterized query to prevent SQL injection
                string query = "SELECT * FROM contentTable WHERE courseID = @courseID";
                SqlCommand cmd = new SqlCommand(query, con);

                // Use the courseID from the session
                cmd.Parameters.AddWithValue("@courseID", Session["SelectedCourseID"].ToString());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Add a new column to store the formatted chapter and title
                dt.Columns.Add("ChapterTitle", typeof(string));

                // Iterate through the rows and format the ChapterTitle
                foreach (DataRow row in dt.Rows)
                {
                    int chapterNumber = Convert.ToInt32(row["chapter"]);
                    string title = row["title"].ToString();
                    string conID = row["contentID"].ToString();

                    // Add "Chapter" prefix to the chapter number
                    string chapterTitle = $"Chapter {chapterNumber}: {title}";

                    // Set the ChapterTitle in the new column
                    row["ChapterTitle"] = chapterTitle;
                }

                // Bind the GridView to the DataTable
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }


            con.Close();
        }


        void firstPage()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Check if both courseID and chapter are stored in the session
            if (Session["SelectedCourseID"] != null)
            {
                // Use a parameterized query to prevent SQL injection
                string query = "SELECT * FROM contentTable WHERE courseID = @courseID AND chapter = @chapter";
                SqlCommand cmd = new SqlCommand(query, con);

                // Use the courseID and chapter from the session
                cmd.Parameters.AddWithValue("@courseID", Session["SelectedCourseID"].ToString());
                cmd.Parameters.AddWithValue("@chapter", 1);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Check if any rows were returned
                if (dt.Rows.Count > 0)
                {
                    title.Text = dt.Rows[0][2].ToString();
                    cont1.Text = dt.Rows[0][3].ToString();
                    cont2.Text = dt.Rows[0][4].ToString();
                    if (!string.IsNullOrEmpty(cont2.Text))
                    {
                        cont2.Visible = true;
                    }
                    
                    content3.Text = dt.Rows[0][5].ToString();
                    if (!string.IsNullOrEmpty(content3.Text))
                    {
                        content3.Visible = true;
                    }
                    content4.Text = dt.Rows[0][6].ToString();
                    if (!string.IsNullOrEmpty(content4.Text))
                    {
                        content4.Visible = true;
                    }
                    
                    Image1.ImageUrl = dt.Rows[0][7].ToString();
                    img1.Text = dt.Rows[0][7].ToString();

                    img2.Text = dt.Rows[0][8].ToString();
                    Image2.ImageUrl = dt.Rows[0][8].ToString();

                    if (!string.IsNullOrEmpty(Image2.ImageUrl))
                    {
                        Image2.Visible = true;
                    }
                    else
                    {
                        Image2.Visible = false;
                    }



                    img3.Text = dt.Rows[0][9].ToString();
                    if (!string.IsNullOrEmpty(img3.Text))
                    {
                        Image3.Visible = true;
                        Image3.ImageUrl = dt.Rows[0][9].ToString();
                    }

                    img4.Text = dt.Rows[0][10].ToString();
                    if (!string.IsNullOrEmpty(img4.Text))
                    {
                        Image4.Visible = true;
                        Image4.ImageUrl = dt.Rows[0][10].ToString();
                    }


                    st1.Text = dt.Rows[0][13].ToString();
                    if (!string.IsNullOrEmpty(st1.Text))
                    {
                        st1.Visible = true;
                    }
                    
                    st2.Text = dt.Rows[0][14].ToString();
                    if (!string.IsNullOrEmpty(st2.Text))
                    {
                        st2.Visible = true;
                    }
                    
                    
                    st3.Text = dt.Rows[0][15].ToString();
                    if (!string.IsNullOrEmpty(st3.Text))
                    {
                        st3.Visible = true;
                    }
                    
                    st4.Text = dt.Rows[0][16].ToString();
                    if (!string.IsNullOrEmpty(st4.Text))
                    {
                        st4.Visible = true;
                    }
                    
                    string YouTubeLink = dt.Rows[0][11].ToString();
                    loadVideo(YouTubeLink);

                    
                }
            }


            con.Close();
        }
    }
}