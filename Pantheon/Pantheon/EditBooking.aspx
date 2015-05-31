<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditBooking.aspx.cs" Inherits="Pantheon.EditBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Edit Booking | Delonix Regia
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
                            <h1>Edit Booking Info</h1>
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
                                            <input type="text" class="form-control" id="Text1" placeholder="Junior Suite" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="Text2" placeholder="05-32" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategoryID">No. of Adults</label>
                                            <input type="text" class="form-control" id="Text10" placeholder="2" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategoryID">No. of Children</label>
                                            <input type="text" class="form-control" id="Text11" placeholder="1" runat="server">
                                        </div>
                                        <div class='col-sm-6'>
                                            <div class="form-group">
                                                <label for="tbxCategoryID">Check-in Date & Time</label>
                                                <div class='input-group date' id='datetimepicker1'>
                                                    <input type='text' class="form-control" placeholder="5 May 2016 14:30" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#datetimepicker1').datetimepicker();
                                            });
                                        </script>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tbxCategoryID">Check-out Date</label>
                                    <div class="col-xs-5 date">
                                        <div class="input-group input-append date" id="dateRangePicker">
                                            <input type="text" class="form-control" name="date" placeholder="May 9 2016" />
                                            <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-group clockpicker">
                                    <label for="tbxCategoryID">Requested Check-out Time</label>
                                    <input type="text" class="form-control" value="14:00">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
