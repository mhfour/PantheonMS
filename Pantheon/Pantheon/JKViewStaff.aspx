<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JKViewStaff.aspx.cs" Inherits="Pantheon.JKViewStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div style="height: 696px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Image ID="ImageStaff" runat="server" Height="197px" ImageAlign="Middle" ImageUrl="~/img/SLAD-Shangrila.jpg" Width="338px" />
			<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonGuest" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonGuest_Click" Text="GUEST" />
			&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonBookingSchedule" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonBookingSchedule_Click" Text="BOOKING SCHEDULE" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Image ID="ImageStaff2" runat="server" Height="34px" ImageUrl="~/img/DR.png" Width="333px" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonDS" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonDS_Click" Text="DUTY SCHEDULE" />
			&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonStaff" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonStaff_Click" Text="STAFF" />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Image ID="ImageStaff3" runat="server" Height="59px" ImageUrl="~/img/underline.gif" Width="334px" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="ButtonEdit" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonEdit_Click" Text="Edit" />
&nbsp;&nbsp;&nbsp;
			<asp:Button ID="ButtonDelete" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" OnClick="ButtonDelete_Click" Text="Delete" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:GridView ID="GridViewStaff" runat="server" Height="19px" HorizontalAlign="Center" Style="text-align: center" Width="650px" BorderColor="White" BorderStyle="None" Font-Names="Calibri Light" ForeColor="Black">
			<HeaderStyle Font-Size="Small" />
		</asp:GridView>
			&nbsp;
		<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br />

		</div>
	</form>
</body>
</html>