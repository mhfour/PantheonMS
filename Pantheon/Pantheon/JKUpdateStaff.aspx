<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JKUpdateStaff.aspx.cs" Inherits="Pantheon.JKUpdateStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
		<asp:Image ID="Image1" runat="server" Height="197px" ImageUrl="~/img/SLAD-Shangrila.jpg" Width="338px" />
		<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
		<asp:Label ID="Label3" runat="server" Text="Enter NRIC:" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxNRIC" runat="server"></asp:TextBox>
		<asp:Button ID="ButtonLoadData" runat="server" OnClick="ButtonLoadData_Click" Text="Button" />
		<br />
		<br />
    
    	<asp:Label ID="Label1" runat="server" Text="First Name" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label2" runat="server" Text="Last Name" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label4" runat="server" Text="Date of Birth" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxDoB" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label5" runat="server" Text="Address" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label6" runat="server" Text="Postal Code" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxPostal" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label7" runat="server" Text="Contact No" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxContactNo" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label8" runat="server" Text="Email" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label9" runat="server" Text="Bank" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxBank" runat="server"></asp:TextBox>
		<br />
		<asp:Label ID="Label10" runat="server" Text="Bank No" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxBankNo" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label11" runat="server" Text="Duty ID" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxDutyID" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label12" runat="server" Text="Password" Font-Names="Calibri Light" ForeColor="#333399"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
		<br />
		<br />
&nbsp;&nbsp;&nbsp;
		<asp:Button ID="ButtonUpdate" runat="server" BackColor="White" BorderStyle="None" Font-Names="Calibri Light" Font-Underline="True" ForeColor="#333399" Text="Save" OnClick="ButtonUpdate_Click" />
    
    </div>
    </form>
</body>
</html>
