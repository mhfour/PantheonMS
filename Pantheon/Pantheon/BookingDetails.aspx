<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="Pantheon.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Booking Records | Pantheon Management System
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
                <a href="#" class="list-group-item">User Accounts</a>
                <a href="#" class="list-group-item">Staff List</a>
                <a href="#" class="list-group-item">Guests' Details</a>
                <a href="#" class="list-group-item active">Booking Records</a>
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
                                <th class="text-center">Guest Name</th>
                                <th class="text-center">Room Unit</th>
                                <th class="text-center">Room Type</th>
                                <th class="text-center">No. of Adults</th>
                                <th class="text-center">No. of Children</th>
                                <th class="text-center">Check-in Date & Time</th>
                                <th class="text-center">Check-out Date & Time</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody id="bookingTable">
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-12 column">
                <a href="AddBooking.aspx" class="btn btn-default pull-right">Add new booking details</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET", // Using HTTP GET.
                url: "http://localhost:8000/api/booking",
                dataType: "json",
                success: function (data) {
                    for (var i in data) {
                        $('#bookingTable').append('<tr>'
                                                    + '<td>' + data[i].bookingid + '</td>'
													+ '<td>' + data[i].guestname + '</td>'
													+ '<td>' + data[i].roomunit + '</td>'
                                                    + '<td>' + data[i].roomtype + '</td>'
                                                    + '<td>' + data[i].noofadults + '</td>'
                                                    + '<td>' + data[i].noofchildren + '</td>'
                                                    + '<td>' + data[i].checkindatetime + '</td>'
                                                    + '<td>' + data[i].checkoutdatetime + '</td>'
                                                    + '<td class="text-center"><a href="EditBooking.aspx?id=' + data[i].bookingid + '" class="btn btn-warning">Edit</a></td> '
													+ '</tr>'
												);
                    }
                }
            });
        });
    </script>
</asp:Content>
