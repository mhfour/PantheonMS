<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="Pantheon.StaffDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Staff List | Pantheon Management System
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
                <a href="#" class="list-group-item active">Staff List</a>
                <a href="#" class="list-group-item">Guests' Details</a>
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
                                <th class="text-center">#</th>
                                <th class="text-center">Staff Name</th>
                                <th class="text-center">IC No.</th>
                                <th class="text-center">DOB</th>
                                <th class="text-center">Address</th>
                                <th class="text-center">Phone No.</th>
                                <th class="text-center">Bank Acc Type</th>
                                <th class="text-center">Bank Acc No.</th>
                                <th class="text-center">Duty/Duties</th>
                            </tr>
                        </thead>
                        <tbody id="categoryTable">
                            <tr>
                                <td>1</td>
                                <td>Hilmi Ja'affar</td>
                                <td>S9635961B</td>
                                <td>27 April 1996</td>
                                <td>Block 641 Pasir Ris Drive 6 #02-46 S'pore 510641</td>
                                <td>96533731</td>
                                <td>POSB Savings</td>
                                <td>191-63522-9</td>
                                <td>Security</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>

