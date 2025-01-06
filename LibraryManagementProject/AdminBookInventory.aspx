<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="LibraryManagementProject.AdminBookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });


        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" container-fluid">
        <div class="row">
            <div class=" col-md-5">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <%--<img src="book_inventory/books.png" id="imgview" height="150px" width="100px" />--%>

                                    <img src="imgs/Lib/bookStack.png" width="100px" />
                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:FileUpload onchange="readURL(this);" Class="form-control" ID="FileUpload1" runat="server" />
                                </center>
                            </div>
                        </div>


                        <br />

                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtBookId"
                                            placeholder="Book ID" runat="server"></asp:TextBox>
                                        <asp:Button Class=" form-control btn btn-primary " ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Book Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtBookName"
                                            placeholder="Name" runat="server" TextMode="DateTime"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>Language:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:DropDownList Class="form-control" ID="ddLang" runat="server">
                                            <asp:ListItem Value="select" Text="select"></asp:ListItem>
                                            <asp:ListItem>English</asp:ListItem>
                                            <asp:ListItem>Hindi</asp:ListItem>
                                            <asp:ListItem>Marathi</asp:ListItem>
                                            <asp:ListItem>Punjabi</asp:ListItem>
                                            <asp:ListItem>French</asp:ListItem>
                                            <asp:ListItem>German</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <label>Publisher Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:DropDownList Class="form-control" ID="ddPublisherName" runat="server">
                                            <asp:ListItem Value="select" Text="select"></asp:ListItem>
                                            <asp:ListItem>Publisher 1</asp:ListItem>
                                            <asp:ListItem>Publisher 2</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>


                            </div>

                            <div class="col-md-4">
                                <label>Author Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList Class="form-control" ID="ddAuthorName" runat="server">
                                            <asp:ListItem Value="select" Text="select"></asp:ListItem>
                                            <asp:ListItem>Author 1</asp:ListItem>
                                            <asp:ListItem>Author 2</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>


                                <label>Publish Date:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtPublishDate" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>

                            </div>


                            <div class="col-md-4">
                                <label>Genre:</label>
                                <div class="form-group">
                                    <asp:ListBox Class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem>Action</asp:ListItem>
                                        <asp:ListItem>Adventure</asp:ListItem>
                                        <asp:ListItem>Comic Book</asp:ListItem>
                                        <asp:ListItem>Self Help</asp:ListItem>
                                        <asp:ListItem>Motivation</asp:ListItem>
                                        <asp:ListItem>Healthy Living</asp:ListItem>
                                        <asp:ListItem>Wellness</asp:ListItem>
                                        <asp:ListItem>Crime</asp:ListItem>
                                        <asp:ListItem>Drama</asp:ListItem>
                                        <asp:ListItem>Fantasy</asp:ListItem>
                                        <asp:ListItem>Horror</asp:ListItem>
                                        <asp:ListItem>Poetry</asp:ListItem>
                                        <asp:ListItem>Personal Development</asp:ListItem>
                                        <asp:ListItem>Romance</asp:ListItem>
                                        <asp:ListItem>Science Fiction</asp:ListItem>
                                        <asp:ListItem>Suspense</asp:ListItem>
                                        <asp:ListItem>Thriller</asp:ListItem>
                                        <asp:ListItem>Art</asp:ListItem>
                                        <asp:ListItem>Autobiography</asp:ListItem>
                                        <asp:ListItem>Encyclopedia</asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>



                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label>Edition:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtEdition"
                                            placeholder="Edition" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Book Cost:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtBookCost"
                                            placeholder="Book Cost" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label>Pages:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtPages"
                                            placeholder="Pages" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>



                            <div class="col-md-3">
                                <label>Actual Stock:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtActualStock"
                                            placeholder="Actual Stock" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Stock:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtCurrentStock"
                                            placeholder="Current Stock" runat="server" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label>Issued Book:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtIssuedBook"
                                            placeholder="Issued Book" runat="server" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class=" col-12">
                                <label>Book Description:</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="txtDescription"
                                        placeholder="Book Description" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <br />



                        <div class="row">
                            <div class="col-4">
                                <asp:Button Class="btn btn-success mx-auto btn-lg"
                                    ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button Class="btn btn-warning  mx-auto btn-lg "
                                    ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button Class="btn btn-danger mx-auto btn-lg "
                                    ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Homepage.aspx"><< Back to Home</a>
                <br />
                <br />

            </div>


            <%--Card second--%>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">


                        <div class="col">
                            <center>
                                <h4>Book Inventory List</h4>
                            </center>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <hr />
                            </center>
                        </div>
                    </div>



                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                        <div class="col">

                            <asp:GridView CssClass=" table table-striped table-bordered" AutoGenerateColumns="False" ID="GridView1" runat="server" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                <Columns>

                                    <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                    <ControlStyle Font-Bold="True" />
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:TemplateField>
                                        <ItemTemplate> 
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-lg-10">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                Author-<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                &nbsp;| Genre-<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                &nbsp;| Language-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                Publisher-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                &nbsp;| Publish Date-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                &nbsp;| Pages-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                &nbsp;| Edition-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                Cost-<asp:Label ID="Label17" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                &nbsp;| Actual Stock-<asp:Label ID="Label18" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                &nbsp;| Available-<asp:Label ID="Label19" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                Description-
                                                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-lg-2">
                                                        <asp:Image CssClass="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                    </div>
                                                 </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
