﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.ADMIN
{
    public partial class manageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                svfName.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from memberTable " , con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                uname.DataSource = dt;
                uname.DataTextField = "username";
                DataBind();
            }
        }

        protected void uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from memberTable where username = '" + uname.Text + "'", con);
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

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "update memberTable set fname ='" + fname.Text + "',lname ='" + lname.Text + "',gender ='" + gender + "',country ='" + country.Text + "',email ='" + email.Text + "',password ='" + pwd.Text  + "'where username ='" + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("manageUser.aspx");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "delete from userTable where username = '" + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("manageUser.aspx");
        }
    }
}