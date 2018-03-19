<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignalR.aspx.cs" Inherits="AspNetDemoProject.Demos.SignalR" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Signalr Chat Messenger</title>
	<script src="../Scripts/jquery-3.1.1.min.js"></script>
	<script src="../Scripts/jquery.signalR-2.2.2.js"></script>
	<script type="text/javascript" src="/signalr/hubs"></script>
</head>
<body>
	<form id="form1" runat="server">

	<script type="text/javascript">
		$(function () {

			var IWannaChat = $.connection.chatHub;
			/*
			
			IWannaChat.client.addMessage = function (message) {
				$('#listMessages').append('<li>' + message + '</li>');
			};

			$("#SendMessage").click(function () {
				IWannaChat.server.send($('#txtMessage').val());
			});
			*/
			
			var updateItemsRetrievedByClient = function (items) {
				console.log("Items obtained by client: " + items.length.toString());
				$("#listMessages").empty();
				for (var i = 0; i < items.length; i++) {
					$("#listMessages").append("From client: " + items[i] + "<br/>");
				}
			};

			var updateItemsPushedFromServer = function (items) {
				console.log("Items received from server: " + items.length.toString());
				$("#listMessages").empty();
				for (var i = 0; i < items.length; i++) {
					$("#listMessages").append("From server: " + items[i] + "<br/>");
				}
			};

			$("#SendMessage").on("click",
				function () {
					var text = $("#txtMessage").val();
					IWannaChat.server.addItem(text)
						.done(function () {
							console.log("Adding item: " + text);
						})
						.fail(function (e) {
							console.log(e);
						});


				});

			IWannaChat.client.itemListUpdated = updateItemsPushedFromServer;
			$.connection.hub.start();

		});
	</script>
	<div>
		<input type="text" id="txtMessage" />
		<input type="button" id="SendMessage" value="broadcast" />
		<ul id="listMessages">
		</ul>
	</div>
	</form>
</body>
</html>