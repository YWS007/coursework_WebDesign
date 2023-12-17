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
    public partial class adminEditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }


            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from adminTable where username = '" + Session["userName"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);


                fname.Text = dt.Rows[0][1].ToString();
                lname.Text = dt.Rows[0][2].ToString();
                string gender = dt.Rows[0][3].ToString();
                if (gender.Equals("M"))
                {
                    rbMale.Checked = true;  //gender = M
                }
                else
                {
                    rbFemale.Checked = true;    //gender = F
                }
                country.Text = dt.Rows[0][4].ToString();
                email.Text = dt.Rows[0][5].ToString();
                pwd.Text = dt.Rows[0][7].ToString();
                Image1.ImageUrl = dt.Rows[0][8].ToString();
                img.Text = dt.Rows[0][8].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (rbMale.Checked)
            {
                gender = "M";
            }
            else if (rbFemale.Checked)
            {
                gender = "F";
            }

            //for file upload
            string folderPath = Server.MapPath("~/ProfilePic/");

            //Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it
                Directory.CreateDirectory(folderPath);
            }

            string ImgPath = "";
            if (this.FileUpload1.HasFile) //to change profile picture
            {
                ImgPath = "~/ProfilePic/" + this.FileUpload1.FileName.ToString();
                //saving the photo to the file directory
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            }
            else
            {
                ImgPath = img.Text;
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "update adminTable set fname ='" + fname.Text + "',lname ='" + lname.Text + "',gender ='" + gender + "',country ='" + country.Text + "',email ='" + email.Text + "',password ='" + pwd.Text + "',photo ='" + ImgPath + "'where username ='" + Session["userName"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("adminEditProfile.aspx");
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("adminlogin.aspx");
        }
    }
}