<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StechAcademy.SignUp" %>
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

    <div class="container">
        <div class="col-lg-offset-4 col-lg-4" id="panel">
            <h2>Sign Up</h2>

            <div class="group">
                <input runat="server" id="txtbxfirstname" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>First Name</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxlastname" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Last Name</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxusername" type="text" required >
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>User Name</label>
            </div>


            <div class="group">
                <input runat="server" id="txtbxpass" type="password" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Password</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxconfpass" type="password" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Confirm Password</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxemail" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Email</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxPhoneno" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Phone No.</label>
            </div>

            <div class="group">
                <label>Gender</label>
                <br />
                <br />
                <asp:DropDownList ID="DDLGender" CssClass="form-control" runat="server">
                    <asp:ListItem Value="0">-- Select --</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                </asp:DropDownList>
            </div>


            <div class="row">
                <div class="col-md-4 pull-right">
                    <asp:Button ID="btnSubmit" type="submit" runat="server"  class="btn btn-success" Text="Submit"></asp:Button>
                </div>
                <div class="col-md-4 pull-right">
                    <a href="Index.aspx" class="btn btn-warning"><span class="glyphicon glyphicon-chevron-left"></span> Cancel</a>
                </div>
            </div>
            <br />
        </div>
    </div>
    <script type="text/javascript">
    </script>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
