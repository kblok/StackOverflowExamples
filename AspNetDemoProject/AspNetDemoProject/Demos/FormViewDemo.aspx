<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormViewDemo.aspx.cs" Inherits="ASPNETDEMOPROJECT.FormViewDemo" EnableEventValidation="false" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:GridView runat="server" ID="rgAssnmtList" AutoGenerateColumns="false" DataKeyNames="Id" OnSelectedIndexChanged="rgAssnmtList_SelectedIndexChanged" AutoGenerateSelectButton="false" OnRowCommand="rgAssnmtList_RowCommand">
				<Columns>
					<asp:TemplateField>
						<ItemTemplate>
							<asp:ImageButton ID="bntimgEdit"  runat="server" ImageUrl="./images/Edit.png"  AlternateText="Edit" CommandName="GetData" CommandArgument='<%# Container.DataItemIndex %>' />
						</ItemTemplate>
						
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
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
