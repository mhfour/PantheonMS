<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDelete.aspx.cs" Inherits="Pantheon.UserDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Removal Confirmation | Delonix Regia
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col col-md-12">
                            <div class="row">
                                <div class="alert alert-success" id="alertSuccess" role="alert" visible="false" runat="server">
                                    <strong>Successfully changed!</strong>
                                    <p></p>
                                </div>
                                <div class="alert alert-danger" id="alertFail" role="alert" visible="false" runat="server">
                                    <strong>Unsuccessful.</strong>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                        <div class="col col-md-12">
                            <h2>Are you sure you want to delete this user?</h2>
                        </div>
                        <div class="col col-md-12">
                            <button type="submit" class="btn btn-primary" id="btnDelete" runat="server">Yes</button>
                            <a href="ManageCategories.aspx" class="btn btn-danger btn-cons">No</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
