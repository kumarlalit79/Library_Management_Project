<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="LibraryManagementProject.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class=" col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/Lib/userLogin.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
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

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        placeholder="Member id" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <br />

                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success d-grid gap-2 col-6 mx-auto btn-lg"
                                        ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    <br />
                                </div>

                                <div class="form-group">
                                    <a href="userSignupPage.aspx">
                                        <input id="signUpUser" class="btn  btn-info btn d-grid gap-2 col-6 mx-auto btn-lg" 
                                            id="Button2" type="button" value="Sign Up" style="color: #FFFFFF" /> 
                                    </a>
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
