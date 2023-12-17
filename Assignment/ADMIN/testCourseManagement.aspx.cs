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
    public partial class WebForm6 : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Validate that all fields are filled
            if (string.IsNullOrWhiteSpace(courseID.Text) ||
                string.IsNullOrWhiteSpace(courseName.Text) ||
                (!rbTea.Checked && !rbWushu.Checked && !rbFestival.Checked) ||
                string.IsNullOrWhiteSpace(instructor.Text))
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "All fields must be filled!";
                return; // Exit the method if validation fails
            }

            // Call the function to handle the image upload
            string ImgPath = HandleImageUpload();

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count (*) from courseTable where courseID = '" + courseID.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Course ID has been taken!";
                }
                else
                {
                    //create record in a table call courseTable
                    string query1 = "insert into courseTable (courseID, courseName, courseCategory, instructor, image) " +
                        "values (@courseID, @courseName, @courseCategory, @instructor, @image) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    cmd1.Parameters.AddWithValue("@courseID", courseID.Text);
                    cmd1.Parameters.AddWithValue("@courseName", courseName.Text);

                    string courseCategory = string.Empty;
                    if (rbTea.Checked)
                    {
                        courseCategory = "Tea";
                    }
                    else if (rbWushu.Checked)
                    {
                        courseCategory = "Wushu";
                    }
                    else if (rbFestival.Checked)
                    {
                        courseCategory = "Festival";
                    }

                    cmd1.Parameters.AddWithValue("@courseCategory", courseCategory);
                    cmd1.Parameters.AddWithValue("@instructor", instructor.Text);
                    cmd1.Parameters.AddWithValue("@image", ImgPath);
                    cmd1.ExecuteNonQuery(); //non-returning query
                    // Maintain the scroll position after the update
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Blue;
                    errMsg.Text = "Add course successful!";
                }

                LoadRecord();
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Add course not successful!" + ex.ToString();
            }
        }

        private string HandleImageUpload()
        {
            string folderPath = Server.MapPath("~/CoursePic/");
            string ImgPath = "";

            // Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exist, create it
                Directory.CreateDirectory(folderPath);
            }

            if (FileUpload1.HasFile)
            {
                ImgPath = "~/CoursePic/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Path.Combine(folderPath, Path.GetFileName(FileUpload1.FileName)));
            }
            else
            {
                ImgPath = img.Text;
            }

            return ImgPath;
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from courseTable", con);
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
            if (cb.Checked == true)
            {
                courseID.Text = GridView1.Rows[rowind].Cells[1].Text;
                courseName.Text = GridView1.Rows[rowind].Cells[2].Text;

                string selectedValue = GridView1.Rows[rowind].Cells[3].Text;
                if (selectedValue == "Tea")
                {
                    rbTea.Checked = true;
                    rbWushu.Checked = false;
                    rbFestival.Checked = false;
                }
                else if (selectedValue == "Wushu")
                {
                    rbTea.Checked = false;
                    rbWushu.Checked = true;
                    rbFestival.Checked = false;
                }
                else if (selectedValue == "Festival")
                {
                    rbTea.Checked = false;
                    rbWushu.Checked = false;
                    rbFestival.Checked = true;
                }
                else
                {
                    rbTea.Checked = false;
                    rbWushu.Checked = false;
                    rbFestival.Checked = false;
                }

                instructor.Text = GridView1.Rows[rowind].Cells[4].Text;
                Image1.ImageUrl = GridView1.Rows[rowind].Cells[5].Text;
                img.Text = GridView1.Rows[rowind].Cells[5].Text;

            }
            else
            {
                reset();
                // Maintain the scroll position after the update
                ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);
            }
        }

        protected void reset()
        {
            courseID.Text = "";
            courseName.Text = "";
            rbTea.Checked = false;
            rbWushu.Checked = false;
            rbFestival.Checked = false;
            instructor.Text = "";
            Image1.ImageUrl = "";
        }

        protected void bReset_Click(object sender, EventArgs e)
        {
            reset();
        }

        protected void bEdit_Click(object sender, EventArgs e)
        {
            // Validate that all fields are filled
            if (string.IsNullOrWhiteSpace(courseID.Text) ||
                string.IsNullOrWhiteSpace(courseName.Text) ||
                (!rbTea.Checked && !rbWushu.Checked && !rbFestival.Checked) ||
                string.IsNullOrWhiteSpace(instructor.Text))
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "All fields must be filled!";
                return; // Exit the method if validation fails
            }

            string courseCategory = string.Empty;
            if (rbTea.Checked)
            {
                courseCategory = "Tea";
            }
            else if (rbWushu.Checked)
            {
                courseCategory = "Wushu";
            }
            else if (rbFestival.Checked)
            {
                courseCategory = "Festival";
            }

            // Call the function to handle the image upload
            string ImgPath = HandleImageUpload();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();

                string query = "UPDATE courseTable SET courseName = @CourseName, courseCategory = @CourseCategory, instructor = @Instructor, image = @Image WHERE courseID = @CourseID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Use parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@CourseName", courseName.Text);
                    cmd.Parameters.AddWithValue("@CourseCategory", courseCategory);
                    cmd.Parameters.AddWithValue("@Instructor", instructor.Text);
                    cmd.Parameters.AddWithValue("@Image", ImgPath);
                    cmd.Parameters.AddWithValue("@CourseID", courseID.Text);

                    cmd.ExecuteNonQuery(); //non-returning query
                    con.Close();
                }
            }

            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            LoadRecord();


            errMsg.Visible = true;
            errMsg.ForeColor = System.Drawing.Color.Blue;
            errMsg.Text = "Edit course successful!";

        }

        protected void bDelete_Click(object sender, EventArgs e)
        {
            // Validate that all fields are filled
            if (string.IsNullOrWhiteSpace(courseID.Text) ||
                string.IsNullOrWhiteSpace(courseName.Text) ||
                (!rbTea.Checked && !rbWushu.Checked && !rbFestival.Checked) ||
                string.IsNullOrWhiteSpace(instructor.Text))
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "All fields must be filled!";
                return; // Exit the method if validation fails
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "delete from courseTable where courseID = @courseID";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@courseID", courseID.Text);
            cmd.ExecuteNonQuery(); //non-returning query
            con.Close();
            LoadRecord();
            reset();
            errMsg.Visible = true;
            errMsg.ForeColor = System.Drawing.Color.Blue;
            errMsg.Text = "Delete course successful!";
        }

        protected void bSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from courseTable where courseID = '" + courseID.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    courseName.Text = dt.Rows[0][1].ToString();
                    string courseCategory = dt.Rows[0][2].ToString();
                    if (courseCategory.Equals("Tea"))
                    {
                        rbTea.Checked = true;
                    }
                    else if (courseCategory.Equals("Wushu"))
                    {
                        rbWushu.Checked = true;
                    }
                    else if (courseCategory.Equals("Festival"))
                    {
                        rbFestival.Checked = true;
                    }

                    instructor.Text = dt.Rows[0][3].ToString();
                    img.Text = dt.Rows[0][4].ToString();
                    Image1.ImageUrl = dt.Rows[0][4].ToString();
                }
                else
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "No data";
                }
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "no rows" + ex.ToString();
            }

            con.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("testContentList.aspx");
        }
    }
}