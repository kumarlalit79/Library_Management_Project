using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                // When no one logs in..jab kisi ne bhi login nahi kiya hai, jab ham home page pe hai..to jab kisi ne login nahi kiya ho to kon kon se link hame page pe show karne hai wo hamne set kar diye.

                if (Session["role"].Equals("")) // ye Equals() , == ye waala hi hai
                {
                    LinkButton1.Visible = true;//user login link button , ye show karna hai
                    LinkButton2.Visible = true; //signup link button , ye show karna hai

                    LinkButton3.Visible = false; // logut btn
                    LinkButton7.Visible = false; // hello user msg when successfull login happens.

                    LinkButton6.Visible = true;// admin login link btn

                    LinkButton11.Visible = false; // author management link btn
                    LinkButton12.Visible = false;// publisher management link btn
                    LinkButton8.Visible = false;// book inventory link btn
                    LinkButton9.Visible = false;// book issuing link btn
                    LinkButton10.Visible = false;// member management link btn

                }

                // When regular user logs in..ye user wo waala hai jo session mai hardcode kiya tha.
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;

                    LinkButton3.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Hello " + Session["username"].ToString();// yaha jisne log in kiya hai uska username bhi show kar dega.

                    LinkButton6.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                }

                // When admin logs in
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;

                    LinkButton3.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Hello,Admin"; // yaha bhi ham dikha skte hai , pr abhi ke liye ise hello admin hi rehnde do..admin ka username tab show krna jab tumhare pass multiple admin ho.

                    LinkButton6.Visible = false;        
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookIssuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignupPage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true;
            LinkButton2.Visible = true;

            LinkButton3.Visible = false;
            LinkButton7.Visible = false;

            LinkButton6.Visible = true;

            LinkButton11.Visible = false;
            LinkButton12.Visible = false;
            LinkButton8.Visible = false;
            LinkButton9.Visible = false;
            LinkButton10.Visible = false;

            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile.aspx");
        }
    }
}