﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.MEMBER
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from memberTable where username = '" + username.Text + "' and Password = '" + password.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select fname from memberTable where username = '" + username.Text + "'", con);
                SqlDataReader dr = cmdType.ExecuteReader(); // Use cmdType here

                string name = "";

                while (dr.Read())
                {
                    name = dr["fname"].ToString().Trim();
                }
                Session["firstName"] = name;
                Session["userName"] = username.Text;
                Response.Redirect("~/MEMBER/testMemberDashboard.aspx");
            }
            else
            {
                errorMsg.Visible = true;
                errorMsg.ForeColor = System.Drawing.Color.Red;
                errorMsg.Text = "Username and Password mismatch!";
                return;
            }

            con.Close();
        }

        
    }
}