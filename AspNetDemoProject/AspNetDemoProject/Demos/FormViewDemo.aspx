<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormViewDemo.aspx.cs" Inherits="ASPNETDEMOPROJECT.FormViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:GridView runat="server" ID="rgAssnmtList" AutoGenerateColumns="true" DataKeyNames="Id" OnSelectedIndexChanged="rgAssnmtList_SelectedIndexChanged" AutoGenerateSelectButton="true"></asp:GridView>
			<asp:FormView ID="fvAssnmtDets" runat="server" AllowPaging="true">
				<ItemTemplate>
					<%# Eval("Text") %>
					<asp:LinkButton runat="server" ID="DeleteButton"  Text="Text"></asp:LinkButton>
					after button
				</ItemTemplate>
			</asp:FormView>
        </div>
    </form>
</body>
</html>
