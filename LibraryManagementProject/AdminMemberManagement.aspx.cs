using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LibraryManagementProject
{
    public partial class AdminMemberManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // Go button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberById();
        }

        // Active button click event
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Active");
        }

        // Pending button click event
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Pending");
        }

        // Deactivate button click event
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Deactive");
        }

        // Delete button click event
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemeberById();
        }

        bool checkIfAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + txtMemberId.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // checking wheater we have got any record or not
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void deleteMemeberById()
        {
            if (checkIfAuthorExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("DELETE member_master_tbl where member_id='" + txtMemberId.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully.')</script>");
                    clearForm();

                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member Id')</script>");
            }
        }

        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand(" SELECT * FROM member_master_tbl WHERE member_id='" + txtMemberId.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtFullName.Text = dr.GetValue(0).ToString();
                        txtStatus.Text = dr.GetValue(10).ToString();
                        txtDOB.Text = dr.GetValue(1).ToString();
                        txtContact.Text = dr.GetValue(2).ToString();
                        txtEmail.Text = dr.GetValue(3).ToString();
                        txtState.Text = dr.GetValue(4).ToString();
                        txtCity.Text = dr.GetValue(5).ToString();
                        txtPin.Text = dr.GetValue(6).ToString();
                        txtAddress.Text = dr.GetValue(7).ToString();
                    }

                }
                else
                    Response.Write("<script>alert('Invalid User')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void updateMemberStatusById(string status)
        {
            if (checkIfAuthorExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id='" + txtMemberId.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID')</script>");

            }
        }

        void clearForm()
        {
            txtMemberId.Text = "";
            txtFullName.Text = "";
            txtStatus.Text = "";
            txtDOB.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtState.Text = "";
            txtCity.Text = "";
            txtPin.Text = "";
            txtAddress.Text = "";
        }

    }
}