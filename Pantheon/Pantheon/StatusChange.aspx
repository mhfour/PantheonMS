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
                                <div class="row">
                                    <div role="form">
                                        <div class="control-group">
                                            <label class="control-label" for="updatedStatus">New Room Status:</label>
                                            <select class="form-control" name="ddlStatus" id="ddlStatus" runat="server">
                                                <option value="1" selected>Vacant</option>
                                                <option value="2">Occupied</option>
                                                <option value="3">Vacant and Scheduled for Cleaning</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-right" id="btnSubmit" runat="server">Submit</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
