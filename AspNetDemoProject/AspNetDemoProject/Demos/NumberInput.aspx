<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberInput.aspx.cs" Inherits="AspNetDemoProject.Demos.NumberInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:TextBox runat="server" ID="tbText" MaxLength="3" Width="80"  type="number">
</asp:TextBox>
			<asp:LinkButton runat="server" ID="link" Text="ccc"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
