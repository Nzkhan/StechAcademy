<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCourses.aspx.cs" Inherits="StechAcademy.AdminCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/formStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <title>Stech - Admin Courses</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
   
    <%--No info Alert--%>
    <div class="container">
        
        <div class="row" id="noInfoAlert" runat="server" visible="false" style="">
            <div class="col-md-3"></div>
            <div class="col-md-6 col-sm-12 col-xs-12">
                <centre>
                <br />
                <asp:LinkButton ID="lnkbtnAdd" runat="server" ToolTip="Add New Record" CssClass="btn btn-group btn-sm btn-success " OnClick="lnkbtnAdd_Click" Text="New Record"><i class="glyphicon glyphicon-plus "></i> New Record</asp:LinkButton>
                <br />
                <br />
                <asp:Image ID="ImgNoData" CssClass="col-md-12 col-sm-12 col-xs-12" runat="server" ImageUrl="~/images/no-record-found.png" /></centre>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

    <%--Table View--%>
    <div class="container" id="CoursesTable" runat="server">
        <div class="row">
            <div class="col-lg-offset-4 col-lg-4 ">
                <center>
                <h1>Courses</h1>
                    <asp:LinkButton ID="lnkbtnAdd2" runat="server" ToolTip="Add New Record" CssClass="btn btn-group btn-sm btn-success " OnClick="lnkbtnAdd_Click" Text="New Record"><i class="glyphicon glyphicon-plus "></i> New Record</asp:LinkButton>
                <br/>
                    <br /><br />
                <asp:GridView ID="GVCourses" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="courseId" OnPageIndexChanging="GVCourses_PageIndexChanging" OnRowCommand="GVCourses_RowCommand" OnRowDeleting="GVCourses_RowDeleting" OnRowEditing="GVCourses_RowEditing"  >
                    <Columns>
                        <asp:BoundField DataField="courseName" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Course" />
                        <asp:BoundField DataField="streamName" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Stream" />

                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:LinkButton CssClass="btn" ID="lnkView" runat="server" ToolTip="View Record" CommandArgument='<%# Eval("courseId") %>' CommandName="Edit" Text="&lt;i class=&quot;glyphicon glyphicon-pencil btn btn-sm btn-primary&quot;&gt;&lt;/i&gt;"></asp:LinkButton>

                                <asp:LinkButton CssClass="btn" ID="lnkDelete" ToolTip="Delete Record" OnClientClick="return confirm('Are you sure you want to delete this record');" runat="server" CommandArgument='<%# Eval("courseId") %>' CommandName="Delete" Text="Delete"><i class="glyphicon glyphicon-trash btn btn-sm btn-danger" ></i></asp:LinkButton>
                                </center>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

    <%--Form View--%>
    <div class="container" id="CoursesForm" runat="server">
        <div class="col-lg-offset-4 col-lg-4" style="" id="panel">
            <h2>Courses</h2>
            <div class=" alert alert-success alert-dismissable" id="successAlert" runat="server" visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Success!</strong> Course added.
            </div>
            <div class="group">
                <label>Stream</label>
                <br />
                <br />
                <asp:DropDownList ID="DDLStream" CssClass="form-control" runat="server"></asp:DropDownList>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>

            <div class="group">
                <input runat="server" id="txtbxCourse" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Course Name</label>
            </div>

            <div class="row">
                <div class="col-md-4 pull-right">
                    <asp:Button ID="btnSubmit" type="submit" runat="server" OnClick="btnSubmit_Click" class="btn btn-success" Text="Submit"></asp:Button>
                </div>
                <div class="col-md-4 pull-right">
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" class="btn btn-danger" Text="Cancel"></asp:Button>
                </div>
            </div>
            <br />
        </div>
    </div>



</asp:Content>
