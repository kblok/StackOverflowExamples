<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxTimer.aspx.cs" Inherits="AspNetDemoProject.Demos.AjaxTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:ScriptManager runat="server" ID="manager"></asp:ScriptManager>
			<asp:UpdatePanel runat="server" ID="UpdatePanel1">
				<ContentTemplate>
					<asp:Timer runat="server" ID="time" Interval="1000"></asp:Timer>
</ContentTemplate>
	</asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
