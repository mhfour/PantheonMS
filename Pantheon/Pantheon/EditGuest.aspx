<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditGuest.aspx.cs" Inherits="Pantheon.EditGuest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Edit Guest Details | Delonix Regia
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
                            <h1>Edit Guest Details</h1>
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
                                            <input type="text" class="form-control" id="tbxCategory" placeholder="Ander Herrera" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text1" placeholder="M" runat="server">
                                        </div>
                                        <form id="dateRangeForm" method="post" class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-xs-5 date">
                                                    <div class="input-group input-append date" id="dateRangePicker">
                                                        <input type="text" class="form-control" name="date" placeholder="August 14 1989" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text3" placeholder="Spanish" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text4" placeholder="AJ000162" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategoryID">Home</label>
                                            <input type="text" class="form-control" id="Text5" placeholder="Room 67 14 Tottenham Court Road London England W1T 1JY" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategoryID">Billing</label>
                                            <input type="text" class="form-control" id="Text6" placeholder="Room 67 14 Tottenham Court Road London England W1T 1JY" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text7" placeholder="5505677773577121" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text8" placeholder="03/22" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text9" placeholder="331" runat="server">
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
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
