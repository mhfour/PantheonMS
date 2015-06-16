<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JsAddStaff.aspx.cs" Inherits="Pantheon.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add a new User
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
                            <h1>Add a new User Account</h1>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="alert alert-success" id="alertSuccess" role="alert" visible="false" runat="server">
                                    <strong>Successfully added!</strong>
                                    <p></p>
                                </div>
                                <div class="alert alert-danger" id="alertFail" role="alert" visible="false" runat="server">
                                    <strong>Unsuccessfully added. Please input the fields again.</strong>
                                    <p></p>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="row">
                                    <div role="form">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxCategory" placeholder="Staff Name" runat="server">
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="updatedStatus">User Level</label>
                                            <div class="controls col-md-12">
                                                <label class="radio" for="updatedStatus-0">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-0" value="1" checked="checked">
                                                    1
                                                </label>
                                                <label class="radio" for="updatedStatus-1">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-1" value="2">
                                                    2
                                                </label>
                                                <label class="radio" for="updatedStatus-2">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-2" value="3">
                                                    3
                                                </label>
                                                <label class="radio" for="updatedStatus-3">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-3" value="4">
                                                    4
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text2" placeholder="Password" runat="server">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary" id="btnCreate" runat="server">Submit</button>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
