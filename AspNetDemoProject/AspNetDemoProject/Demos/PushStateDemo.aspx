<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PushStateDemo.aspx.cs" Inherits="AspNetDemoProject.Demos.PushStateDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<a href="#" data-state="foo">Foo</a>
			<a href="#" data-state="bar">Bar</a>
        </div>
		<script src="/Scripts/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">

$("[data-state]").click(function (event) {
	history.pushState(null, null, "#" + $(event.currentTarget).data("state"));
	refreshSelection();
	event.preventDefault();
});

$(document).ready(function () {
	refreshSelection();
});

$(window).on('hashchange', function () {
	refreshSelection();
});

function refreshSelection() {
	if (document.location.hash) {
		$("[data-state]").css("font-weight", "normal");
		$("[data-state=" + document.location.hash.replace("#", "") + "]").css("font-weight", "bold");
	}
}
		</script>
    </form>
</body>
</html>
