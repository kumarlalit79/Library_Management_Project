<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="LibraryManagementProject.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            max-width: 100%;
            height: 268px;
            width: 1280px;
        }

        #mainBg {
            overflow-x: hidden;
            width: 100%;
        }

        #centerBg {
            overflow-x: hidden;
            width: 100%;
        }

        .bgFeature, .bgFeatureTwo {
            background-color: #F6F6F6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <%--<img src="imgs/Lib/photo-1528932574509-27a7e195a75b.jpeg" />--%>
        <img src="imgs/Lib/photo-1544822688-c5f41d2c1972.jpeg" class="mt-1 bg " id="mainBg" />


    </section>

    <section>

        <div class="container bgFeature">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 primary feature</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/digital-inventory.png" width="150px" />--%>

                        <img src="imgs/Lib/bookInven.png" id="booInv" />

                        <h4>Digital Inventory</h4>
                        <p style="text-align: justify">
                            The digital inventory system in our library project organizes books efficiently, assigning unique identifiers for easy tracking and updating. It enhances accessibility, allowing librarians to manage the collection accurately.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/search-online.png" width="150px" />--%>

                        <img src="imgs/Lib/searchbook.png" width="64px" />

                        <h4>Search Books</h4>
                        <p style="text-align: justify">
                            Our search function simplifies book exploration, enabling users to find titles using criteria like title, author, or ISBN. With filters and sorting, users can quickly discover and locate books within the digital catalog.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/defaulters-list.png" width="150px" />--%>

                        <img src="imgs/Lib/defaults.png" width="64px" />


                        <h4>Defaulter List</h4>
                        <p style="text-align: justify">
                            The defaulters list tracks overdue books, helping librarians take timely actions. This feature ensures responsible library use and timely returns, contributing to a smoothly functioning system.
                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>


    <section>
        <%--<img src="imgs/in-homepage-banner.jpg" class="img-fluid" />--%>
        <%--class="img-fluid" means width 100%--%>

        <img src="imgs/Lib/photo-1554896541-dff010081afe.jpeg" id="centerBg" />

    </section>


    <section>

        <div class="container bgFeatureTwo">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have simple 3 process</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/sign-up.png" width="150px" />--%>

                        <img src="imgs/Lib/signup.png" />

                        <h4>Sign Up</h4>
                        <p style="text-align: justify">
                            Our user-friendly sign-up process ensures quick access to the library system. Users can create accounts effortlessly, providing a gateway to explore and utilize the digital library resources.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/search-online.png" width="160px" />--%>

                        <img src="imgs/Lib/searchbook.png" width="64px" />

                        <h4>Search Books</h4>
                        <p style="text-align: justify">
                            Effortlessly find your desired books using our intuitive search feature. Enter titles, authors, or genres, and instantly discover a world of literature at your fingertips within our digital catalog.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <%--<img src="imgs/library.png" width="160px" />--%>

                        <img src="imgs/Lib/visitus.png" width="64px" />


                        <h4>Visit Us</h4>
                        <p style="text-align: justify">
                            Explore our library effortlessly by visiting our digital platform. Experience a seamless interface designed for easy navigation and access to a diverse collection of books and resources.
                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>




    <section>
        <img src="imgs/Lib/baselib1.jpeg" />
    </section>


    <section>

        <div class="container bgFeatureTwo">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Explore, Engage, Evolve</h2>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <center>
                        <%--<img src="imgs/sign-up.png" width="150px" />--%>

                       <%-- <img src="imgs/Lib/signup.png" />--%>

                        <img src="imgs/Lib/update.png" width="64px" />

                        <h4>Stay Updated</h4>
                        <p style="text-align: justify">
                            Be the first to know about new releases, community events, and exclusive content. Subscribe to our newsletter and follow us on [social media platforms] for the latest updates.
                        </p>
                    </center>
                </div>

                

                <div class="col-md-6">
                    <center>
                        <%--<img src="imgs/library.png" width="160px" />--%>

                        <img src="imgs/Lib/start.png" width="64px" />

                        <%--<img src="imgs/Lib/visitus.png"  />--%>


                        <h4>Start Your Journey Today</h4>
                        <p style="text-align: justify">
                            Embark on a journey of knowledge, exploration, and imagination. Join [Your Library Name] and redefine the way you experience literature in the digital age.

                            <br />
                            <b>Ready to dive in? [Create Your Account] or [Explore Our Collection].
</p></b>
                           
                    </center>
                </div>
            </div>
        </div>
    </section>



</asp:Content>
