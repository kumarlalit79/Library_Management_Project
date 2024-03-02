<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userSignupPage.aspx.cs" Inherits="LibraryManagementProject.userSignupPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class=" col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <%--<img src="imgs/generaluser.png"  />--%>

                                    <img src="imgs/Lib/signup.png" width="100" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
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
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox1"
                                        placeholder="Full Name" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of birth</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2"
                                        placeholder="dd/mm/yy" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox3"
                                        placeholder="Contact No." TextMode="Phone" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4"
                                        placeholder="Email ID" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                        <asp:ListItem>Arunanchal Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chhatisgarh</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujrat</asp:ListItem>
                                        <asp:ListItem>Hariyana</asp:ListItem>
                                        <asp:ListItem>Himanchal</asp:ListItem>
                                        <asp:ListItem>JK</asp:ListItem>
                                        <asp:ListItem>Uttrakhand</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerla</asp:ListItem>
                                        <asp:ListItem>Madhyapradesh</asp:ListItem>
                                        <asp:ListItem>Maharastra</asp:ListItem>
                                        <asp:ListItem>Manipur</asp:ListItem>
                                        <asp:ListItem>Meghalaya</asp:ListItem>
                                        <asp:ListItem>Mizoram</asp:ListItem>
                                        <asp:ListItem>Nagaland</asp:ListItem>
                                        <asp:ListItem>Oddisa</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Sikkam</asp:ListItem>
                                        <asp:ListItem>TN</asp:ListItem>
                                        <asp:ListItem>Telangana</asp:ListItem>
                                        <asp:ListItem>Tripura</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        placeholder="City" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7"
                                        placeholder="Pin Code" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="col">
                            <label>Full Address</label>
                            <div class="form-group">
                                <asp:TextBox Class="form-control" ID="TextBox5"
                                    placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <center>
                                <div class="col">
                                    <span class="badge rounded-pill bg-info">Login Credentials</span>
                                </div>
                            </center>
                        </div>




                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8"
                                        placeholder="User ID" TextMode="Phone" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9"
                                        placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    &nbsp;
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <br />
                                    <asp:Button Class="btn btn-success d-grid gap-2 col-6 mx-auto btn-lg"
                                        ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                    <br />
                                </div>
                            </div>
                        </div>



                    </div>
                </div>


                <a href="Homepage.aspx"><< Back to Home</a>
                <br />
                <br />

            </div>
        </div>
    </div>
</asp:Content>
