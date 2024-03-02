<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="TermsPage.aspx.cs" Inherits="LibraryManagementProject.TermsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container aboutBgOne">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2 class="fw-light">Terms of  <span class="fw-bolder">Service</span> </h2>

                </center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <center>
                    <p style="text-align: justify">
                        Welcome to [Your Library Name]! Before using our platform, please carefully read and understand the following terms and conditions. By accessing or using [Your Library Name], you agree to be bound by these terms. If you do not agree with any part of these terms, please refrain from using our services.
                    </p>



                </center>

                <ul>
                    <li>
                        <h3>Acceptance of Terms</h3>
                        <p>By accessing or using [Your Library Name], you agree to comply with and be bound by these terms of service. If you disagree with any part of these terms, please do not use our services.</p>
                    </li>

                    <li>
                        <h3>User Accounts</h3>
                        <p>To access certain features of [Your Library Name], you may be required to create a user account. You are responsible for maintaining the confidentiality of your account information and are fully responsible for all activities that occur under your account.</p>
                    </li>

                    <li>
                        <h3>Use of Content</h3>
                        <p>All content provided on [Your Library Name] is for informational and educational purposes only. The unauthorized reproduction or distribution of our content is prohibited.</p>
                    </li>

                    <li>
                        <h3>Privacy Policy</h3>
                        <p>Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and disclose information..</p>
                    </li>

                    <li>
                        <h3>User Conduct</h3>
                        <p>
                            When using [Your Library Name], you agree not to:
                            <br />
                            <ul>
                                <li>Violate any applicable laws or regulations.</li>
                                <li>Infringe on the rights of others.</li>
                                <li>Transmit any harmful, threatening, or illegal content.</li>
                            </ul>
                        </p>
                    </li>
                    <li>
                        <h3>Copyright and Intellectual Property</h3>
                        <p>The content on [Your Library Name] is protected by copyright and intellectual property laws. Unauthorized use or reproduction of any content is strictly prohibited.</p>
                    </li> 
                    <li>
                        <h3> Contact Information</h3>
                        <p>If you have any questions or concerns about these terms, please contact us at [your email address].</p>
                    </li>


                </ul>
            </div>



            <div class="col-md-6 align-self-center" id="bgBooks">
                <center>
                    <img src="imgs/Lib/termsAndCondn.png" width="250px" class="mb-5" />
                    

                </center>
            </div>
        </div>
    </div>

</asp:Content>
