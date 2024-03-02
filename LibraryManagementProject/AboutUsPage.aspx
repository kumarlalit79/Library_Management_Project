<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AboutUsPage.aspx.cs" Inherits="LibraryManagementProject.AboutUsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .aboutBgOne{
            background-color: #EFFAFC;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container aboutBgOne">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2 class=" fw-bolder">About Us</h2>

                </center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <center>
                    <p style="text-align: justify">
                        Welcome to [Your Library Name], where knowledge meets technology!
                        <br />
                        We take pride in being at the forefront of the digital revolution in library
                        <br />
                        management. Our mission is to provide an innovative and user-friendly
                        <br />
                        platform that caters to the evolving needs of readers, researchers,
                        <br />
                        and knowledge enthusiasts.
                    </p>
                </center>
            </div>



            <div class="col-md-6 bg-#EFFAFC " id="bgBooks">
                <center>
                    <img src="imgs/Lib/aboutBooks.jpg" width="350px" />
                </center>
            </div>
        </div>
    </div>



    <div class="container bgFeature">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2 class=" fw-bolder">Our Vision</h2>

                </center>
            </div>
        </div>

        <div class="row">




            <div class="col-md-6 bg-#EFFAFC " id="bgBooks">
                <center>
                    <%--<img src="imgs/Lib/aboutBooks.jpg" width="350px" />--%>

                    <img src="imgs/Lib/vision.png" width="300px" />

                </center>
            </div>


            <div class="col-md-6">
                <center>
                    <p style="text-align: justify">
                        At [Your Library Name], we envision a future where accessing and managing information is seamless, efficient, and enjoyable. We strive to foster a culture of continuous learning and exploration, empowering individuals to discover the vast world of literature and knowledge.
                    </p>
                </center>
            </div>
        </div>
    </div>



    <div class="container aboutBgOne">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2 class=" fw-bolder">Our Story</h2>

                </center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <center>
                    <p style="text-align: justify">
                        Established in [Year of Establishment], [Your Library Name] emerged as a response to the changing landscape of libraries in the digital age. We recognized the need for a dynamic platform that combines traditional library values with cutting-edge technology. Over the years, we have evolved into a hub for information, offering a diverse collection of e-books, articles, and multimedia resources
                    </p>
                </center>
            </div>



            <div class="col-md-6 bg-#EFFAFC " id="bgBooks">
                <center>
                    <img src="imgs/Lib/story.png" width="300px" />

                </center>
            </div>
        </div>
    </div>







</asp:Content>
