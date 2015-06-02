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
                            </tr>
                        </thead>
                        <tbody id="categoryTable">
                            <tr>
                                <td class="text-center">5</td>
                                <td class="text-center">05-32</td>
                                <td class="text-center">Junior Suite</td>
                                <td class="text-center"><span class="label label-danger">Occupied</span></td> 
                            </tr>
                            <tr>
                                <td class="text-center">1</td>
                                <td class="text-center">01-41</td>
                                <td class="text-center">Double Room</td>
                                <td class="text-center"><span class="label label-success">Vacant</span></td>
                            </tr>
                            <tr>
                                <td class="text-center">3</td>
                                <td class="text-center">03-11</td>
                                <td class="text-center">Twin Double Room</td>
                                <td class="text-center"><span class="label label-warning">Housekeeping</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
