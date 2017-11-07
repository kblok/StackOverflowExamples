<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewDemo.aspx.cs" Inherits="AspNetDemoProject.Demos.ListViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
		<asp:ListView runat="server" ID="listView">
			<ItemTemplate>
				<asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("Id") %>'/>
			</ItemTemplate>
		</asp:ListView>
		<asp:LinkButton runat="server" id="refresh" PostBackUrl="~/Demos/RepeaterDemo.aspx">Refresh</asp:LinkButton>
    </form>
</body>
</html>
