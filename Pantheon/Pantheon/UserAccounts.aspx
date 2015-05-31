<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserAccounts.aspx.cs" Inherits="Pantheon.UserAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    User Accounts | Delonix Regia
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
    <style type="text/css">
        .list-group-horizontal .list-group-item {
            display: inline-block;
        }

        .list-group-horizontal .list-group-item {
            margin-bottom: 0;
            margin-left: -4px;
            margin-right: 0;
        }

            .list-group-horizontal .list-group-item:first-child {
                border-top-right-radius: 0;
                border-bottom-left-radius: 4px;
            }

            .list-group-horizontal .list-group-item:last-child {
                border-top-right-radius: 4px;
                border-bottom-left-radius: 0;
            }

        .panel-body {
            padding-top: -200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
        <div class="col-md-12 text-center">
            <div class="list-group list-group-horizontal">
                <a href="#" class="list-group-item active">User Accounts</a>
                <a href="#" class="list-group-item">Staff List</a>
                <a href="#" class="list-group-item">Guests' Details</a>
                <a href="#" class="list-group-item">Booking Records</a>
                <a href="#" class="list-group-item">Room Information</a>
                <a href="#" class="list-group-item">Duty Roster</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <div class="row">
                    <div class="alert alert-success" id="alertSuccess" role="alert" visible="false" runat="server">
                        <strong>Successful!</strong>
                        <p></p>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-bordered table-hover" id="tab_logic">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Staff Name</th>
                                <th class="text-center">User Level</th>
                                <th class="text-center">Password</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody id="categoryTable">
                            <tr>
                                <td>1</td>
                                <td>Wang Ah Soo</td>
                                <td>1</td>
                                <td>9b93c1299a3f66038275bfed712892c5</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Hilmi Ja'affar</td>
                                <td>4</td>
                                <td>2ffc512cf059f4bff1a8d6691fe7ceb4</td>
                                <td class="text-center"><a href="EditCategory.aspx?id=" class="btn btn-warning">Edit</a> <a href="DeleteCategory.aspx?id=" class="btn btn-danger">Delete</a>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-12 column">
                <a href="/Admin/AddCategory.aspx" class="btn btn-default pull-right">Add a new user account</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
