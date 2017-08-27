<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterDemo.aspx.cs" Inherits="ASPNETDEMOPROJECT.RepeaterDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand" OnItemCreated="repeater_ItemCreated" OnItemDataBound="repeater_ItemDataBound">
				<ItemTemplate>
					<%# Eval("Text") %>
					<asp:Image runat="server" ID="brandImage" />
					<asp:LinkButton runat="server" ID="DeleteButton" Text="Text" CommandName="Delete" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
					<asp:DropDownList ID="drlApplicationStatus" runat="server" AutoPostBack="true" CssClass="form-control" CommandName="Update" CommandArgument='<%#Eval("Id")%>'>
						<asp:ListItem CssClass="text-center" Text="--Select--" Value="0"></asp:ListItem>
						<asp:ListItem CssClass="text-center" Text="Active" Value="1"></asp:ListItem>
						<asp:ListItem CssClass="text-center" Text="Pending" Value="2 "></asp:ListItem>
					</asp:DropDownList>
					<asp:TextBox runat="server" ID="txtB" data-amount="" Text='<%# Eval("Id") %>'></asp:TextBox>
				</ItemTemplate>
				<FooterTemplate>
					<asp:Label data-billed="" runat="server" ID="billed"></asp:Label>
				</FooterTemplate>
			</asp:Repeater>

			<script src="/Scripts/jquery-3.1.1.min.js"></script>
			<script type="text/javascript">
var amount = 0;

$("[data-amount]").each(function (index, el) {
	if ($(el).val()) {
		amount += parseInt($(el).val(), 10);
	}
});

$("[data-billed]").text(amount);
			</script>
		</div>
	</form>
</body>
</html>
