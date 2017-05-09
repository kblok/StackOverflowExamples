<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterDemo.aspx.cs" Inherits="ASPNETDEMOPROJECT.RepeaterDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
				<ItemTemplate>
					<%# Eval("Text") %>
					<asp:LinkButton runat="server" ID="DeleteButton"  Text="Text" CommandName="Delete" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
					
				</ItemTemplate>
			</asp:Repeater>
        </div>
    </form>
</body>
</html>
