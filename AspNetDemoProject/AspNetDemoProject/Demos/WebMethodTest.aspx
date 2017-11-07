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
		<script src="/Scripts/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">
			
$.ajax({
	type: "POST",
	url: "WebMethodTest.aspx/Save",
	data: JSON.stringify({ "id": 2, "wasChecked": "test" }),
	contentType: "application/json; charset=utf-8",
	dataType: "json"
});

			var myVar= "ooooblah";
			getRCT("test");
			function getRCT(mez_sis) {
				$.ajax({
					url: 'WebMethodTest.aspx/GetTempInfo',
					method: 'post',
					contentType: 'application/json',
					data: '{d_val:\"' + myVar + '\"}',
					dataType: 'json',
					success: function (data) {
						alert(data.d);
					},
					error: function (error) {
						alert(error);
					}
				});
			}

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
