﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="StechAcademy.AdminFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/formStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <title>Stech - Admin Feedback</title>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />
        <br />
        <br />
        <div class="row" id="noInfoAlert" runat="server" visible="false" style="">
            <div class="col-md-3"></div>
            <div class="col-md-6 col-sm-12 col-xs-12">
                <br />
                <br />
                <br />
                <asp:Image ID="ImgNoData" CssClass="col-md-12 col-sm-12 col-xs-12" runat="server" ImageUrl="~/images/no-record-found.png" />
                <%--<asp:Label ID="lblIfNoRecord" Font-Size="Larger" CssClass="alert alert-danger" runat="server"  Text="No Enquries Found !!"></asp:Label>--%>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    <div class="container" id="FeedbackTable" runat="server">

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 ">
                <center>
                <h1>Feedback Records</h1>
                <br/>
                <asp:GridView ID="GVFeedback" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="feedbackId" OnRowCommand="GVFeedback_RowCommand" OnRowDeleting="GVFeedback_RowDeleting" OnRowEditing="GVFeedback_RowEditing" OnSelectedIndexChanging="GVFeedback_SelectedIndexChanging" >
                    <Columns>
                        <asp:BoundField DataField="name" HeaderStyle-CssClass="" HeaderText="Name" />
                        <asp:BoundField DataField="emailId" HeaderText="Email" />
                        <asp:BoundField DataField="phoneNo" HeaderText="Phone No." />
                        <asp:BoundField DataField="gender" HeaderText="Gender" />
                       <%-- <asp:BoundField DataField="feedback" HeaderText="Feedback" />--%>
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:LinkButton CssClass="btn" ID="lnkView" runat="server" ToolTip="View Record" CommandArgument='<%# Eval("feedbackId") %>' CommandName="view" Text="Edit"><i class="glyphicon glyphicon-eye-open btn btn-sm btn-primary align"></i></asp:LinkButton>

                                <asp:LinkButton CssClass="btn" ID="lnkDelete" ToolTip="Delete Record" OnClientClick="return confirm('Are you sure you want to delete this record');" runat="server" CommandArgument='<%# Eval("feedbackId") %>' CommandName="Delete" Text="Delete"><i class="glyphicon glyphicon-trash btn btn-sm btn-danger " ></i></asp:LinkButton>
                                </center>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <div class="container" id="FeedbackForm" runat="server">
        <div class="col-lg-offset-4 col-lg-4" style="" id="panel">
            <h2>Enquiry</h2>


            <div class="group">
                <label>Name</label>
                <br />
                <br />
                <input runat="server" id="txtbxName" readonly="true" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>

            </div>

            <div class="group">
                <label>Email</label>
                <br />
                <br />
                <input runat="server" id="txtbxEmailid" readonly="true" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>

            </div>

            <div class="group">
                <label>Phone No</label>
                <br />
                <br />
                <input runat="server" id="txtbxPhonenum" readonly="true" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>

            </div>

            <div class="group">
                <label>Gender</label>
                <br />
                <br />
                <asp:DropDownList ID="DDLGender" CssClass="form-control " Enabled="false" runat="server">
                    <asp:ListItem Value="0">-- Select --</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="group">
                <label>Feedback</label>
                <br />
                <br />
                <asp:TextBox TextMode="MultiLine" ID="txtbxFeedback" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-md-4 pull-right">
                    <asp:Button ID="btnBack" type="submit" runat="server" CausesValidation="false" OnClick="btnSubmit_Click" class="btn btn-success" Text="Back"></asp:Button>
                </div>
                <%--<div class="col-md-4 pull-right">
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" class="btn btn-danger" Text="Cancel"></asp:Button>
                </div>--%>
            </div>
            <br />
        </div>
    </div>


</asp:Content>
