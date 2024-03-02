<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="LibraryManagementProject.AdminMemberManagement" %>

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
                                    <h4>Memeber Details</h4>
                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <%--<img src="imgs/generaluser.png" width="100" />--%>

                                    <img src="imgs/Lib/member.png" width="100"/>


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
                            <div class="col-md-3">
                                <label>Member ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtMemberId"
                                            placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button Class="btn btn-primary"
                                            ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtFullName"
                                            placeholder="Full Name" runat="server" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label>Account Status:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtStatus"
                                            placeholder="Status" runat="server" TextMode="DateTime" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton Class="btn btn-success" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton Class="btn btn-warning" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                            <i class="fas fa-pause-circle"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton Class="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                            <i class="fas fa-times-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>



                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label>Date Of Birth:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtDOB"
                                            placeholder="dd/mm/yy"  ReadOnly="True" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtContact"
                                            placeholder="Contact"  ReadOnly="True" runat="server" TextMode="Phone"></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label>Email Id:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtEmail"
                                            placeholder="Email Id" ReadOnly="True" runat="server" TextMode="Email"></asp:TextBox>

                                    </div>
                                </div>
                            </div>



                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label>State:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--input-group both text box and button come in same line--%>
                                        <asp:TextBox Class="form-control" ID="txtState"
                                            placeholder="State"  ReadOnly="True" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtCity"
                                            placeholder="City" ReadOnly="True" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-5">
                                <label>Pin Code:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="txtPin"
                                            placeholder="Pin Code" ReadOnly="True" runat="server" TextMode="Number"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class=" col-12">
                                <label>Full Postal Address:</label>
                                <div class="form-group">
                                        <asp:TextBox Class="form-control" ID="txtAddress"
                                            placeholder="Pin Code" ReadOnly="True" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <br />



                        <div class="row">
                            <div class="col-12">
                                <asp:Button Class="btn btn-danger d-grid gap-2 col-6 mx-auto btn-lg"
                                    ID="Button2" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
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
                                <h4>Member List</h4>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <center>
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_num" HeaderText="Contact" SortExpression="contact_num" />
                                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
