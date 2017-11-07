<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicGridView.aspx.cs" Inherits="AspNetDemoProject.Demos.DynamicGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div
			   <asp:GridView ID="GridView1"  runat="server" OnRowCommand="GridView1_RowCommand"> </asp:GridView>
        </div>
    </form>
</body>
</html>
