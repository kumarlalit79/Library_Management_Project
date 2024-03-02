<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssuing.aspx.cs" Inherits="LibraryManagementProject.AdminBookIssuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function ()  {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });

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
                                    <h4>Booking Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <%--<img src="imgs/books.png" width="100" />--%>

                                    <img src="imgs/Lib/book-stacktwo.png" width="100px" />

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
                            <div class="col-md-6">
                                <label>Member ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="TextBox1"
                                            placeholder="Member ID" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Id:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox2"
                                            placeholder="Book Id" runat="server" TextMode="DateTime"></asp:TextBox>
                                        <asp:Button Class="btn btn-secondary"
                                            ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Member Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="TextBox3"
                                            placeholder="Member Name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox4"
                                            placeholder="Book Name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Issue Date:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="TextBox5"
                                            placeholder="" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Due Date:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox6"
                                            placeholder="Book Id" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <br />



                        <div class="row">
                            <div class="col-6">
                                <asp:Button Class="btn btn-primary d-grid gap-2 col-6 mx-auto btn-lg" 
                                    ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                            </div>

                            <div class="col-6">
                                <asp:Button Class="btn btn-success d-grid gap-2 col-6 mx-auto btn-lg" 
                                    ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
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
                                <h4>Issued Book List</h4>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <center>
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>
