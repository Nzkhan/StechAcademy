<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOffers.aspx.cs" Inherits="StechAcademy.AdminOffers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Stech - Admin Offers</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
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
    <div class="container" id="UsersTable" runat="server">
        <div class="row">
            <div class="col-lg-offset-4 col-lg-4 ">
                <center>
                <h1>Users</h1>
                    <asp:LinkButton ID="lnkbtnAdd2" runat="server" ToolTip="Add New Record" CssClass="btn btn-group btn-sm btn-success " OnClick="lnkbtnAdd_Click" Text="New Record"><i class="glyphicon glyphicon-plus "></i> New Record</asp:LinkButton>
                <br/>
                    <br /><br />
                <asp:GridView ID="GVUsers" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="offerid" OnPageIndexChanging="GVUsers_PageIndexChanging" OnRowCommand="GVUsers_RowCommand" OnRowDeleting="GVUsers_RowDeleting" OnRowEditing="GVUsers_RowEditing"  >
                    <Columns>
                        <asp:BoundField DataField="firstname" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="First Name" />
                        <asp:BoundField DataField="lastName" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Last Name" />
                        <asp:BoundField DataField="EmailId" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Email" />
                        <asp:BoundField DataField="phoneNo" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Phone no" />
                        <asp:BoundField DataField="gender" ReadOnly="true" HeaderStyle-CssClass="" HeaderText="Gender" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:LinkButton CssClass="btn" ID="lnkView" runat="server" ToolTip="View Record" CommandArgument='<%# Eval("offerid") %>' CommandName="Edit" Text="&lt;i class=&quot;glyphicon glyphicon-pencil btn btn-sm btn-primary&quot;&gt;&lt;/i&gt;"></asp:LinkButton>

                                <asp:LinkButton CssClass="btn" ID="lnkDelete" ToolTip="Delete Record" OnClientClick="return confirm('Are you sure you want to delete this record');" runat="server" CommandArgument='<%# Eval("offerid") %>' CommandName="Delete" Text="Delete"><i class="glyphicon glyphicon-trash btn btn-sm btn-danger" ></i></asp:LinkButton>
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
    <div class="container" id="UsersForm" runat="server">
        <div class="col-lg-offset-4 col-lg-4" style="" id="panel">
            <h2>Users</h2>
            <div class=" alert alert-success alert-dismissable" id="successAlert" runat="server" visible="false">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Success!</strong> User added.
            </div>


            <div class="group">
                <input runat="server" id="txtbxFirstName" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>First Name</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxLastName" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Last Name</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxUserName" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>User Name</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxEmail" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Email ID</label>
            </div>

            <div class="group">
                <input runat="server" id="txtbxPhone" type="text">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>phone Num</label>
            </div>

            <div class="group">
                <label>Gender</label>
                <br />
                <br />
                <asp:DropDownList ID="DDLGender" CssClass="form-control" runat="server" Width="100%">
                    <asp:ListItem Value="0">-- Select --</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>

            <div class="group">
                <label>User Type</label>
                <br />
                <br />
                <asp:DropDownList ID="DDLUserType" CssClass="form-control" runat="server" Width="100%">
                    <asp:ListItem Value="0">-- Select --</asp:ListItem>
                    <asp:ListItem Value="A">Admin</asp:ListItem>
                    <asp:ListItem Value="U">User</asp:ListItem>
                </asp:DropDownList>
                <span class="highlight"></span>
                <span class="bar"></span>
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
