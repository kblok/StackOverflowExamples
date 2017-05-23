<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignalR.aspx.cs" Inherits="AspNetDemoProject.Demos.SignalR" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signalr Chat Messenger</title>
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/jquery.signalR-2.2.2.js"></script>
	<script type="text/javascript" src="/signalr/hubs"></script>
</head>
<body>
    <form id="form1" runat="server">

    <script type="text/javascript">
        $(function () {

            var IWannaChat = $.connection.chatHub;
            IWannaChat.client.addMessage = function (message) {
                $('#listMessages').append('<li>' + message + '</li>');
            };

            $("#SendMessage").click(function () {
                IWannaChat.server.send($('#txtMessage').val());
            });

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