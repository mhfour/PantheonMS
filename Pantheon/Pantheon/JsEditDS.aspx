<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JsEditDS.aspx.cs" Inherits="Pantheon.EditBooking" %>

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
                                            <label for="tbxRoomUnit">Room Unit:</label>
                                            <input type="text" class="form-control" id="tbxRoomUnit" placeholder="" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxRoomType">Room Type:</label>
                                            <input type="text" class="form-control" id="tbxRoomType" placeholder="" runat="server">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <p><strong>Check-out Date:</strong></p>
                                        <asp:Calendar ID="Calendar1" runat="server" Width="300px" Height="300px"></asp:Calendar>
                                    </div>
                                    <p><strong>Check-out Time:</strong></p>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="7:00">7:00</asp:ListItem>
                                        <asp:ListItem>8:00</asp:ListItem>
                                        <asp:ListItem>9:00</asp:ListItem>
                                        <asp:ListItem>10:00</asp:ListItem>
                                        <asp:ListItem>11:00</asp:ListItem>
                                        <asp:ListItem>12:00</asp:ListItem>
                                        <asp:ListItem>13:00</asp:ListItem>
                                        <asp:ListItem>14:00</asp:ListItem>
                                        <asp:ListItem>15:00</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary pull-right" id="btnSubmit" runat="server">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
