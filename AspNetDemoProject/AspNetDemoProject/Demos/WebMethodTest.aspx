<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebMethodTest.aspx.cs" Inherits="ASPNETDEMOPROJECT.WebMethodTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
		<script src="Scripts/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">

			var myVar= "ooooblah";

			$.ajax({
				type: "POST",
				url: "WebMethodTest.aspx/TestFunc",
				data: "{val:'" + myVar + "'}",
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				success: onSuccess
			});

			function onSuccess(data) {
				alert(data.d.MainResponse);

				if (data.d.ExtraArgsForMagicFunction) {
					magicFunction(data.d.ExtraArgsForMagicFunction)
				}
			}

			function magicFunction(args) {
				alert(args[0]);
			}
		</script>
    </form>
	
</body>
</html>
