<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListDemo.aspx.cs" Inherits="AspNetDemoProject.Demos.DataListDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="SubjectAdded" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
								<asp:Label ID="SubjectLbl" runat="server" Text='<%# Eval("subject") %>'></asp:Label> 
                            </td>
                            <td>
                                <asp:TextBox ID="FeeBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
		<asp:LinkButton ID="action" runat="server" OnClick="action_Click" Text="Save"></asp:LinkButton>
    </form>
</body>
</html>
