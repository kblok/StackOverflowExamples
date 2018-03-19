<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegExpValidation.aspx.cs" Inherits="AspNetDemoProject.Demos.RegExpValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
			<script src="/Scripts/jquery-3.1.1.min.js"></script>
				<script type="text/javascript">
					$(document).on("change", "form input[type='text'], form textarea", function () {
							$(this).val(function (i, value) {
								alert('trim addon this:=' + this.id + ' trimmed:=' + value.trim());
								return value.trim();
							});
					});
		</script>
	<form id="form1" runat="server">

		<asp:TextBox ID="TextBoxMultiId" runat="server" />
		<asp:RegularExpressionValidator
			ID="RegularExpressionValidatorMultiId" runat="server" Display="Dynamic"
			ControlToValidate="TextBoxMultiId" ErrorMessage="Oops!"
			SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9_]{5,255}$">
		</asp:RegularExpressionValidator>

	</form>
</body>
</html>
