<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataDash.aspx.cs" Inherits="AspNetDemoProject.Demos.DataDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button Text="text" runat="server" ID="btn1" />
			<asp:Button Text="text" runat="server" ID="btn2" />
		</div>
		<table>
			<tr>
				<td>75
				</td>
				<td>11
				</td>
				<td id="TLD"><asp:Label runat="server" ID="label">75</asp:Label>
				</td>
			</tr>
		</table>
		<script src="/Scripts/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">

			$("[data-dynamic-button]").click(function (event) {
				event.preventDefault()
				alert($(event.currentTarget).data("dynamic-button"));
			});
		</script>
		<script type="text/javascript">
			var td = document.getElementsByTagName("td");
			var i = 0, tds = td.length;
			for (i; i < tds; i++) {
				if (td[i].innerText == 75) {
					td[i].setAttribute("style", "background:green;");
				}
			}

		</script>
		
	</form>
	<script type="text/javascript">
			function fillModal() {
				alert('<%# alert%>');
			}
    </script>
</body>
</html>
