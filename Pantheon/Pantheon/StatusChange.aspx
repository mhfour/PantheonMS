<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StatusChange.aspx.cs" Inherits="Pantheon.StatusChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Change Room Status | Delonix Regia
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
                            <h1>Change the Room Status</h1>
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
                                <h3>Room Unit: 01-41</h3>
                                <div class="row">
                                    <div role="form">
                                        <div class="form-group">
                                            <label for="tbxCategoryID">Current Room Status</label>
                                            <input type="text" class="form-control" id="tbxStatus" placeholder="Vacant" runat="server">
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="updatedStatus">New Room Status</label>
                                            <div class="controls col-md-12">
                                                <label class="radio" for="updatedStatus-0">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-0" value="Vacant" checked="checked">
                                                    Vacant
                                                </label>
                                                <label class="radio" for="updatedStatus-1">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-1" value="Occupied">
                                                    Occupied
                                                </label>
                                                <label class="radio" for="updatedStatus-2">
                                                    <input type="radio" name="updatedStatus" id="updatedStatus-2" value="Housekeeping">
                                                    Housekeeping
                                                </label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary" id="btnCreate" runat="server">Submit</button>
                                    </div>
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
