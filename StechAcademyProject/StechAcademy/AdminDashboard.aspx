<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="StechAcademy.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/formStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br /><br />
    <div class="container">
     
        <div class="row">

            <h1>Welcome ,
                <asp:Label ID="LblUser" runat="server" Text="@UserName" CssClass="text-success"></asp:Label></h1>
            <br />

            <div class="col-lg-4 col-md-4 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminStream.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Stream<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Streams
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminCourses.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Courses<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Courses
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminRegistration.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Students<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Students
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminFeedback.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Feedback<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Feedback
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminEnquiry.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Enquiry<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Enquiry
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminOffers.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Offers<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Offers
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">

                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <div class="">
                            <div class="">

                                <span class="x-icon-headings-invert icon-x-order x-icon-headings"></span>
                                <a style="color: white" href="AdminUsers.aspx">
                                    <h3 class="header-white header-smaller" style="color: white">Users<span style="color: white" class="glyphicon glyphicon-arrow-right pull-right"></span>
                                </a></h3>
                                <br />
                            </div>
                        </div>
                    </div>
                    <p>
                        <center>
                    <br />
                    Manage Users
                <br />
                            <br />
                    <br />
                   </center>
                    </p>
                </div>
            </div>
        </div>
</div>
          
     
   
</asp:Content>
