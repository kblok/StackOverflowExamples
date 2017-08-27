<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P44359543.aspx.cs" Inherits="AspNetDemoProject.ExternalCode.P44359543" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="USR" runat="server" Text="UserName"></asp:Label>

            <br />
            <button ID="SUB"></button>

            <div id="msg">HERE</div>

            <script src="/Scripts/jquery-3.1.1.js"></script>

            <script src="/Scripts/jquery.signalR-2.2.2.js"></script>

            <script src="/signalr/hubs"></script>

            <script type="text/javascript">

                $(function () {
					var con = $.connection.XZHUB;
                    $('#msg').text("test");
                    $.connection.hub.qs = { 'username': 'rooz' };

                    con.client.broadcastMessage = function (msg) {
                        var enmsg = $('<dive />').text(msg).html();
                        $('#msg').append('<div>'+enmsg+'</div>');
                    };


                    $.connection.hub.start().done(function () {
                        $('#SUB').click(function (e) {
							con.server.send();
							e.preventDefault();
                        });
                    });

                });

            </script>

        </div>
    </form>
</body>
</html>