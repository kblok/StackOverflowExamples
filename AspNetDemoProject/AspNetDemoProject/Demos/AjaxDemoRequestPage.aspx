<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxDemoRequestPage.aspx.cs" Inherits="AspNetDemoProject.Demos.AjaxDemoRequestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			Country:
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
			Title:
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
			<asp:Button ID="btnAjax" runat="server" Text="$.ajax()" />
			<div id="container"></div>
		</div>
		<script src="/Scripts/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">
            $(function () {
                $("#btnAjax").click(function (evt) {
                    var data = {};
                    data.country = $("#txtCountry").val();
                    data.title = $("#txtTitle").val();
                    debugger;
                    $.ajax({
                        url: "PostTarget.aspx",
                        type: "POST",
                        data: data,
						contentType: "application/x-www-form-urlencoded;charset=UTF-8",
                        dataType: "json",
                        success: SuccessfulAjaxResponse,
                        error: ErroticAjaxResponse
                    });
                    evt.preventDefault();
                });
            });
            function SuccessfulAjaxResponse(results, status, jqXHR) {
                $("#container").empty();
                debugger;
                for (var i = 0; i < results.length; i++) {
                    $("#container").append("<tr>" +
                        "<td>" + results[i].EmployeeID + "</td>" +
                        "<td>" + results[i].FirstName + "</td>" +
                        "<td>" + results[i].LastName + "</td>"
                        );
                }
            }

            function ErroticAjaxResponse(jqXHR, status, error) {
                alert("Error: " + error);
            }
		</script>
	</form>
</body>
</html>
