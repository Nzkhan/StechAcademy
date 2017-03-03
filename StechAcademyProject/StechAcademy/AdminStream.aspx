<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStream.aspx.cs" Inherits="StechAcademy.Stream" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/formStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <title>Stech - Admin Stream</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        
              <%--No info Alert--%>
        <div class="row" id="noInfoAlert" runat="server" visible="false" style="">
            <div class="col-md-3"></div>
            <div class="col-md-6 col-sm-12 col-xs-12">
                 <asp:LinkButton ID="lnkbtnAdd" runat="server" ToolTip="Add New Record" CssClass="btn btn-group btn-sm btn-success " OnClick="lnkbtnAdd_Click" Text="New Record"><i class="glyphicon glyphicon-plus "></i> New Record</asp:LinkButton>
                <br />
                <br />
                <br />
                <asp:Image ID="ImgNoData" CssClass="col-md-12 col-sm-12 col-xs-12" runat="server" ImageUrl="~/images/no-record-found.png" />
            </div>
            <div class="col-md-3"></div>
        </div>
   

    <div class="container" runat="server" id="StreamTable">
        <div class="row">
            <br /><br />
            <div class="col-md-3 col-md-offset-4">
                <center><h1 class="center">Stream</h1></center><br />
                <asp:LinkButton ID="lnkbtnAdd2" runat="server" ToolTip="Add New Record" CssClass="btn btn-group btn-sm btn-success " OnClick="lnkbtnAdd_Click" Text="New Record"><i class="glyphicon glyphicon-plus "></i> New Record</asp:LinkButton>
                <br /><br />
                <asp:GridView ID="GVStream" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="streamId" OnPageIndexChanging="GVStream_PageIndexChanging" OnRowCommand="GVStream_RowCommand" OnRowDeleting="GVStream_RowDeleting" OnRowUpdating="GVStream_RowUpdating" OnRowEditing="GVStream_RowEditing">
                    <Columns>
                        <asp:BoundField DataField="streamName" ReadOnly="true" HeaderText="Stream" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                &nbsp;&nbsp;
                                 <asp:LinkButton ID="lnkbtnEdit" runat="server" ToolTip="Edit Record" CommandArgument='<%# Eval("streamId") %>' CommandName="Edit"><i class="glyphicon glyphicon-pencil btn btn-sm btn-primary" ></i></asp:LinkButton>
                                 &nbsp;&nbsp;
                                <asp:LinkButton ID="lknbtnDelete" runat="server" ToolTip="Delete Record" CommandArgument='<%# Eval("streamId") %>' CommandName="Delete"><i class="glyphicon glyphicon-trash btn btn-sm btn-danger" ></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

    <div class="container" runat="server" id="StreamForm">
        <br /><br />
        <div class="col-lg-offset-4 col-lg-4" id="panel">
            <h2>Add/Edit Stream</h2>
            <div class="group">
                <input runat="server" id="txtbxStream" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Stream Name</label>
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
      

    <script type="text/javascript">
    </script>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
