<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPublisherManagement.aspx.cs" Inherits="LibraryManagementProject.AdminPublisherManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function ()  {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container">
        <div class="row">
            <div class=" col-md-5">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <%--<img src="imgs/publisher.png" width="100"/>--%>
                                    <img src="imgs/Lib/Bookpublishing.png" width="100px" />


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
                            <div class="col-md-4">
                                <label>Publisher ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="TextBox1"
                                            placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button Class="btn btn-primary"
                                            ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Publisher Name:</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2"
                                        placeholder="Publisher Name" runat="server" TextMode="DateTime"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />



                        <div class="row">
                            <div class="col-4">
                                <asp:Button Class="btn btn-success  mx-auto btn-lg" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button Class="btn btn-warning  mx-auto btn-lg" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button Class="btn btn-danger  mx-auto btn-lg" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                <h4>Publisher List</h4>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <center>
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
