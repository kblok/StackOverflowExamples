<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterClientScriptBlock.aspx.cs" Inherits="AspNetDemoProject.Demos.RegisterClientScriptBlock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
			<script type="text/javascript">

				function SelectionTextBox() {

					document.getElementById("TextBox1").select();

				}

		</script>
	<form id="form1" runat="server">
		<div>
		</div>
		<asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
		<asp:LinkButton runat="server" ID="lnk" Text="Test" OnClick="lnk_Click"></asp:LinkButton>
		<asp:Label runat="server" ID="LastVisitLbl"></asp:Label>
	</form>

</body>
</html>
