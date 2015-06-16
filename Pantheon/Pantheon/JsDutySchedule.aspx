<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JsDutySchedule.aspx.cs" Inherits="Pantheon.DutyRoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Duty Roster | Delonix Regia
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Duty Roster</legend>

            <!-- Button -->
            <div class="control-group">
                <label class="control-label" for="buttonToday">Today</label>
                <div class="controls">
                    <button id="buttonToday" name="buttonToday" class="btn btn-default">Open</button>
                </div>
            </div>

            <!-- Button -->
            <div class="control-group">
                <label class="control-label" for="buttonWeek">This week</label>
                <div class="controls">
                    <button id="buttonWeek" name="buttonWeek" class="btn btn-default">Open</button>
                </div>
            </div>

            <!-- Button -->
            <div class="control-group">
                <label class="control-label" for="buttonMonth">This month</label>
                <div class="controls">
                    <button id="buttonMonth" name="buttonMonth" class="btn btn-default">Open</button>
                </div>
            </div>

        </fieldset>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
