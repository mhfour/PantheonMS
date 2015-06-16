<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JsEditStaff.aspx.cs" Inherits="Pantheon.EditStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Update Staff Particulars | Delonix Regia
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
                            <h1>Edit Staff Details</h1>
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
                                            <label for="tbxCategory">Staff Name</label>
                                            <input type="text" class="form-control" id="tbxCategory" placeholder="Hilmi Ja'affar" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="Text1">NRIC</label>
                                            <input type="text" class="form-control" id="Text1" placeholder="S9635961B" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategory">Date of Birth</label>
                                            <input type="text" class="form-control" id="Text2" placeholder="27 April 1996" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategory">Home Address</label>
                                            <input type="text" class="form-control" id="Text3" placeholder="Block 641 Pasir Ris Drive 6 #02-46 S'pore 510641<" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategory">Contact No.</label>
                                            <input type="text" class="form-control" id="Text4" placeholder="96533731" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategory">Bank Acc Type</label>
                                            <input type="text" class="form-control" id="Text5" placeholder="POSB Savings" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label for="tbxCategory">Bank Acc No.</label>
                                            <input type="text" class="form-control" id="Text6" placeholder="191-63522-9" runat="server">
                                        </div>
                                        <div class="control-group">
                                            <label for="tbxCategory">Duty Type</label>
                                            <div class="controls col-md-12">
                                                <label class="checkbox" for="dutyType-0">
                                                    <input type="checkbox" name="dutyType" id="dutyType-0" value="General Maintenance">
                                                    General Maintenance
                                                </label>
                                                <label class="checkbox" for="dutyType-1">
                                                    <input type="checkbox" name="dutyType" id="dutyType-1" value="Estate Maintenance">
                                                    Estate Maintenance
                                                </label>
                                                <label class="checkbox" for="dutyType-2">
                                                    <input type="checkbox" name="dutyType" id="dutyType-2" value="Room Maintenance">
                                                    Room Maintenance
                                                </label>
                                                <label class="checkbox" for="dutyType-3">
                                                    <input type="checkbox" name="dutyType" id="dutyType-3" value="Security">
                                                    Security
                                                </label>
                                            </div>
                                        </div>
                                            <button type="submit" class="btn btn-danger pull-right" id="btnDelete" runat="server">Remove Account</button>
                                            <button type="submit" class="btn btn-primary pull-right" id="Button1" runat="server">Submit</button>
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
