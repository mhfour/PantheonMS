<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JKUpdateStaff.aspx.cs" Inherits="Pantheon.JKUpdateStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    	<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label3" runat="server" Text="NRIC"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label6" runat="server" Text="Postal Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label7" runat="server" Text="Contact No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label9" runat="server" Text="Bank"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label10" runat="server" Text="Bank No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label11" runat="server" Text="Duty ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
		<br />
		<br />
&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonUpdate" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" Text="Save" />
    
    </div>
    </form>
</body>
</html>
