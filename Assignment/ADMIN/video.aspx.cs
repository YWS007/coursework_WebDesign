using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class video : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string youtubeLink = txtYouTubeLink.Text.Trim();

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
                else
                {
                    // Invalid YouTube link
                    Response.Write("<script>alert('Invalid YouTube link. Please enter a valid link.');</script>");
                }
            }
            else
            {
                // Empty YouTube link
                Response.Write("<script>alert('Please enter a YouTube link.');</script>");
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


    }
}