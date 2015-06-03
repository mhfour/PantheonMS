<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomStatus.aspx.cs" Inherits="Pantheon.RoomStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Room Status | Pantheon Management System
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
                <a href="UserAccounts.aspx" class="list-group-item">User Accounts</a>
                <a href="StaffDetails.aspx" class="list-group-item">Staff List</a>
                <a href="GuestDetails.aspx" class="list-group-item">Guests' Details</a>
                <a href="BookingDetails.aspx" class="list-group-item">Booking Records</a>
                <a href="#" class="list-group-item active">Room Information</a>
                <a href="DutyRoster.aspx" class="list-group-item">Duty Roster</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <div class="row">
                    <table class="table table-bordered table-hover" id="tab_logic">
                        <thead>
                            <tr>
                                <th class="text-center">Room Floor</th>
                                <th class="text-center">Unit No.</th>
                                <th class="text-center">Type</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody id="roomTable">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET", // Using HTTP GET.
                url: "http://localhost:8000/api/room",
                dataType: "json",
                success: function (data) {
                    for (var i in data) {
                        $('#roomTable').append('<tr>'
													+ '<td>' + data[i].roomlvl + '</td>'
													+ '<td>' + data[i].roomunit + '</td>'
                                                    + '<td>' + data[i].roomtype + '</td>'
                                                    + '<td>' + data[i].roomstatus + '</td>'
                                                    + '<td class="text-center"><a href="StatusChange.aspx?id=' + data[i].roomid + '" class="btn btn-warning">Edit</a></td> '
													+ '</tr>'
												);
                    }
                }
            });
        });
    </script>
</asp:Content>
