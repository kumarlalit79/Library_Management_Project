using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace LibraryManagementProject
{
    public partial class AdminBookInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillAuthorPublisherValues();
            }
            GridView1.DataBind();
        }

        // Go button 
        protected void btnGo_Click(object sender, EventArgs e)
        {
            getBookByID();
        }

        // Update button 
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            updateBookById();
        }

        // Delete button 
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }


        // Add button 
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist())
            {
                Response.Write("<script>alert('Book Already Exist, try some other book id')</script>");
            }
            else
            {
                addNewBooks();
            }
        }

        void deleteBookByID()
        {
            if (checkIfBookExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from book_master_tbl WHERE book_id='" + txtBookId.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void updateBookById()
        {
            if (checkIfBookExist())
            {
                try
                {
                    int actual_stock = Convert.ToInt32(txtActualStock.Text.Trim());
                    int current_stock = Convert.ToInt32(txtCurrentStock.Text.Trim());

                    if (global_actual_stock == actual_stock)
                    {

                    }
                    else
                    {
                        if (actual_stock < global_issued_books)
                        {
                            Response.Write("<script>alert('Actual stock value cannot be less than the issued book')</script>");
                            return;
                        }
                        else
                        {
                            current_stock = actual_stock - global_issued_books;
                            txtCurrentStock.Text = "" + current_stock;
                        }
                    }


                    string genres = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        genres = genres + ListBox1.Items[i] + ",";
                    }
                    genres = genres.Remove(genres.Length - 1);

                    string filepath = "~/book_inventory/books";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                        filepath = global_filepath;
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                        filepath = "~/book_inventory/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    SqlCommand cmd = new SqlCommand("UPDATE book_master_tbl SET book_name=@book_name,genre=@genre,author_name=@author_name,publisher_name=@publisher_name,publish_date=@publish_date,language=@language,edition=@edition,book_cost=@book_cost,no_of_pages=@no_of_pages,book_description=@book_description,actual_stock=@actual_stock,current_stock=@current_stock,book_img_link=@book_img_link WHERE book_id='" + txtBookId.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@book_name", txtBookName.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@author_name", ddAuthorName.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_name", ddPublisherName.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", txtPublishDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", ddLang.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@edition", txtEdition.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_cost", txtBookCost.Text.Trim());
                    cmd.Parameters.AddWithValue("@no_of_pages", txtPages.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_description", txtDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock", actual_stock.ToString());
                    cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                    cmd.Parameters.AddWithValue("@book_img_link", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Book Updated successfuly')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID')</script>");

            }
        }

        void getBookByID()
        {
            try
            {
                //for author dropdown list 
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id='" + txtBookId.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // checking if we get any record or not
                if (dt.Rows.Count >= 1)
                {
                    txtBookName.Text = dt.Rows[0]["book_name"].ToString();
                    txtPublishDate.Text = dt.Rows[0]["publish_date"].ToString();
                    txtEdition.Text = dt.Rows[0]["edition"].ToString();
                    txtBookCost.Text = dt.Rows[0]["book_cost"].ToString().Trim();
                    txtPages.Text = dt.Rows[0]["no_of_pages"].ToString().Trim();
                    txtActualStock.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    txtCurrentStock.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    txtDescription.Text = dt.Rows[0]["book_description"].ToString();
                    txtIssuedBook.Text = "" + (Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));

                    ddLang.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    ddAuthorName.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();
                    ddPublisherName.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Text[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;
                            }
                        }
                    }
                    global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    global_issued_books = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["book_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID')</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }

        void fillAuthorPublisherValues()
        {
            try
            {

                //for author dropdown list 
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("SELECT author_name FROM author_master_tbl", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddAuthorName.DataSource = dt;
                ddAuthorName.DataValueField = "author_name";
                ddAuthorName.DataBind();

                //for publisher dropdown list
                cmd = new SqlCommand("SELECT publisher_name FROM publisher_master_tbl", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                ddPublisherName.DataSource = dt;
                ddPublisherName.DataValueField = "publisher_name";
                ddPublisherName.DataBind();


            }
            catch (Exception ex)
            {

            }
        }

        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id='" + txtBookId.Text.Trim() + "' OR book_name='" + txtBookName.Text.Trim() + "'", con);

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

        void addNewBooks()
        {
            try
            {
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);


                string filepath = "~/book_inventory/books.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                filepath = "~/book_inventory/" + filename;



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl(book_id,book_name,genre,author_name,publisher_name,publish_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link) values (@book_id,@book_name,@genre,@author_name,@publisher_name,@publish_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@book_img_link)", con);

                cmd.Parameters.AddWithValue("@book_id", txtBookId.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", txtBookName.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", ddAuthorName.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", ddPublisherName.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", txtPublishDate.Text.Trim());
                cmd.Parameters.AddWithValue("@language", ddLang.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", txtEdition.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", txtBookCost.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", txtPages.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", txtDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", txtActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", txtActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book added successfully')</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}