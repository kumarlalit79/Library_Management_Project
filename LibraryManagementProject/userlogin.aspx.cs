﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LibraryManagementProject
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand(" SELECT * FROM member_master_tbl WHERE member_id='"+TextBox1.Text.Trim()+"' AND password='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull')</script>");
                        Session["username"] = dr.GetValue(8).ToString();//8th position pe jo value hai dr use get karlo keh rahe hai..db mai 8th position pe member id hai to ham usi ko get kar rahe hai.

                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("Homepage.aspx");
                }
                else
                    Response.Write("<script>alert('Invalid User')</script>");//agr koi bhi row nahi mili to means invalid user hai.
            }
            catch (Exception ex)
            {

            }
        }
    }
}