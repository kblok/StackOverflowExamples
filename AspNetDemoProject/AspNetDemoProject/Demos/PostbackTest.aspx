<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostbackTest.aspx.cs" Inherits="AspNetDemoProject.Demos.PostbackTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button id="btnNewEmployee" Text="Add a New Employee" OnClick="newemployee" runat="server" />
        </div>
    </form>
</body>
</html>
