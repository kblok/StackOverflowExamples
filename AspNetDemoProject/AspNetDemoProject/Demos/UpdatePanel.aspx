<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="AspNetDemoProject.Demos.UpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:ScriptManager runat="server"></asp:ScriptManager>
		<div class="post commentPanel" id="pnlComment">
			<asp:UpdatePanel runat="server" ID="uptComment" UpdateMode="Always">
				<ContentTemplate>
					<div class="post-footer">
						<div class="input-group">
							<asp:TextBox runat="server" ID="txtComment" CssClass="form-control" placeholder="Add a comment"></asp:TextBox>
							<asp:Button runat="server" CssClass="btn btn-primary" imgId='<%# Eval("PID") %>' ID="btnSendComment" OnClick="btnSendComment_Click" Text="Send"></asp:Button>
						</div>
						<ul class="comments-list">

							<asp:ListView runat="server" ID="listComment" ItemPlaceholderID="itemPlaceHolder">
								<ItemTemplate>
									<li class="comment">
										<p><%# Eval("Text") %></p>
									</li>
								</ItemTemplate>
							</asp:ListView>

						</ul>
					</div>
				</ContentTemplate>
			</asp:UpdatePanel>
		</div>
	</form>
</body>
</html>
