<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBooking.aspx.cs" Inherits="Pantheon.AddBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add Booking Details | Delonix Regia
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
    <link href="Content/bootstrap-datetimepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col col-md-12">
                            <h1>Add Booking Info</h1>
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
                                            <input type="text" class="form-control" id="tbxGuestName" placeholder="Guest Name" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxRoomType" placeholder="Room Type" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxRoomUnit" placeholder="Room Unit No." runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxAdults" placeholder="No. of Adults" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tbxChildren" placeholder="No. of Children" runat="server">
                                        </div>
                                        <div class='col-sm-6'>
                                            <div class="form-group">
                                                <label for="tbxCategoryID">Check-in Date & Time</label>
                                                <div class='input-group date' id='datetimepicker1'>
                                                    <input type='text' class="form-control"  id="tbxCheckInDate" runat="server" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class='col-sm-6'>
                                            <div class="form-group">
                                                <label for="tbxCategoryID">Check-out Date & Time</label>
                                                <div class='input-group date' id='datetimepicker2'>
                                                    <input type='text' class="form-control" id="tbxCheckOutDate" runat="server" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" id="btnSubmit" runat="server">Submit</button>
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
    <script src="Scripts/moment.min.js"></script>
    <script src="Scripts/bootstrap-datetimepicker.min.js"></script>

    <script type="text/javascript">
        $(document).on('ready', function () {
            $('#datetimepicker1').datetimepicker({
                format: 'DD/MM/YYYY HH:mm'
            });

            $('#datetimepicker2').datetimepicker({
                format: 'DD/MM/YYYY HH:mm'
            });

            $("#datetimepicker1").on("dp.change", function (e) {
                $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
            });
            $("#datetimepicker2").on("dp.change", function (e) {
                $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
            });
        });
    </script>
</asp:Content>
