using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Runtime.InteropServices.ComTypes;
using Newtonsoft.Json.Linq;

namespace Assignment.ADMIN
{
    public partial class manageContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPendingRecord();
                LoadRecord();
            }
        }

        void LoadPendingRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from contactUsTable where status = 'new'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

            if (GridView1.Rows.Count <= 0)
            {
                msg.Visible = true;
                msg.ForeColor = System.Drawing.Color.Blue;
                msg.Text = "No new message.";
            }
            
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Get the ID from the DataKeys collection of the GridView
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            string idValue = GridView1.DataKeys[rowIndex]["id"].ToString();

            string query = "UPDATE contactUsTable SET status = 'done' WHERE id = @id";

            SqlCommand cmd = new SqlCommand(query, con);

            // Define and set the parameter for @member
            cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.VarChar));
            cmd.Parameters["@id"].Value = idValue;

            cmd.ExecuteNonQuery(); // Execute the SQL query

            // Maintain the scroll position after the update
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scrollScript", "window.scrollTo(0, " + Request.Form["__SCROLLPOSITIONY"] + ");", true);

            LoadRecord();
            LoadPendingRecord();
            con.Close();

            msg.Visible = true;
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Contacted!";
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from contactUsTable where status = 'done'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();

            if (GridView2.Rows.Count <= 0)
            {
                msg2.Visible = true;
                msg2.ForeColor = System.Drawing.Color.Blue;
                msg2.Text = "No records found.";
            }
        }


        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "CheckChanged")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                CheckBox chk = (CheckBox)GridView2.Rows[rowIndex].FindControl("chk");
                string idValue = GridView2.DataKeys[rowIndex]["id"].ToString();

                // Handle the checkbox change here
                if (chk.Checked)
                {
                    // The checkbox is checked
                    DeleteRecord(idValue);
                }
                
                LoadRecord();
            }
        }

        private void DeleteRecord(string id)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                string query = "DELETE FROM contactUsTable WHERE id = @id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery(); 
                con.Close();
            }
            msg2.Visible = true;
            msg2.ForeColor = System.Drawing.Color.Red;
            msg2.Text = "Delete Successful!";
        }

        protected void bDelete_Click(object sender, EventArgs e)
        {
            List<string> idsToDelete = new List<string>();

            foreach (GridViewRow row in GridView2.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("chk");

                if (chk.Checked)
                {
                    string idValue = GridView2.DataKeys[row.RowIndex]["id"].ToString();
                    idsToDelete.Add(idValue);
                }
            }

            if (idsToDelete.Count > 0)
            {
                // Perform the delete operation for the selected rows
                foreach (string id in idsToDelete)
                {
                    DeleteRecord(id);
                }

                LoadRecord();
            }
        }


        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Find the delete button in each row
                Button deleteButton = (Button)e.Row.FindControl("bDelete");

                // Attach the click event handler
                deleteButton.Click += new EventHandler(bDelete_Click);
            }
        }

        
    }
}