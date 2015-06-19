<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JKAddStaff.aspx.cs" Inherits="Pantheon.JKAddStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
			<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><br /><br />
			<asp:Label ID="Label3" runat="server" Text="NRIC"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox><br />
			<asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
			&nbsp;<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox><br />
			<asp:Label ID="Label6" runat="server" Text="Postal Code"></asp:Label>
			&nbsp;
			<asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label7" runat="server" Text="Contact No."></asp:Label>
			&nbsp;
			<asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox><br />
			<asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label9" runat="server" Text="Bank"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox><br />
			<asp:Label ID="Label10" runat="server" Text="Bank No"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label11" runat="server" Text="Duty ID"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox12" runat="server" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
			<br />
			<br />
&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Strikeout="False" Font-Underline="True" ForeColor="#333399" />

			<br />
			<br />
		</div>
		<div>

		</div>
	</form>
</body>
</html>
