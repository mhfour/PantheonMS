<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuestDetails.aspx.cs" Inherits="Pantheon.GuestDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Guest Details | Pantheon Management System
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
                <a href="#" class="list-group-item active">Guests' Details</a>
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
                                <th class="text-center">Guest Name</th>
                                <th class="text-center">Gender</th>
                                <th class="text-center">DOB</th>
                                <th class="text-center">Nationality</th>
                                <th class="text-center">NRIC</th>
                                <th class="text-center">Home Address</th>
                                <th class="text-center">Billing Address</th>
                                <th class="text-center">Credit Card No.</th>
                                <th class="text-center">Expiry Date</th>
                                <th class="text-center">Security Code</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody id="categoryTable">
                            <tr>
                                <td>Ander Herrera</td>
                                <td>M</td>
                                <td>August 14 1989</td>
                                <td>Spanish</td>
                                <td>AJ000162</td>
                                <td>Room 67 14 Tottenham Court Road London England W1T 1JY</td>
                                <td>Room 67 14 Tottenham Court Road London England W1T 1JY</td>
                                <td>5505677773577121</td>
                                <td>03/22</td>
                                <td>331</td>
                                <td class="text-center"><a href="EditCategory.aspx?id=" class="btn btn-warning">Edit</a>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-12 column">
                <a href="/Admin/AddCategory.aspx" class="btn btn-default pull-right">Add new guest details</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET", // Using HTTP GET.
                url: "http://localhost:60000/api/category",
                dataType: "json",
                success: function (data) {
                    for (var i in data) {
                        $('#categoryTable').append('<tr>'
													+ '<td>' + data[i].Guestid + '</td>'
													+ '<td>' + data[i].Guestname + '</td>'
                                                    + '<td>' + data[i].Guestdob + '</td>'
                                                    + '<td>' + data[i].Guestnationality + '</td>'
                                                    + '<td>' + data[i].Guestpassportnum + '</td>'
                                                    + '<td>' + data[i].Guesthomeadd + '</td>'
                                                    + '<td>' + data[i].Guestbilladd + '</td>'
                                                    + '<td>' + data[i].Guestccnum + '</td>'
                                                    + '<td>' + data[i].Guestccexpiry + '</td>'
                                                    + '<td>' + data[i].Guestccsecurity + '</td>'
													+ '<td class="text-center"><a href="EditCategory.aspx?id=' + data[i].Guestid + '" class="btn btn-warning">Edit</a> '
													+ '<a href="DeleteCategory.aspx?id=' + data[i].Guestid + '" class="btn btn-danger">Delete</a></td>'
													+ '</tr>'
												);
                    }
                }
            });
        });
    </script>
</asp:Content>

