<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioOptions.aspx.cs" Inherits="AspNetDemoProject.Demos.RadioOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			   <fieldset id="group1">
            <input type="radio" name="group1"  id="google" checked runat="server" value ="google"/>
            <label for="google" id="Label1">1th  SE</label>
            <input type="radio" name="group1"  id="yahoo" runat="server" value ="yahoo"/>
            <label for="yahoo">2th SE</label>

            <input type="radio" name="group1" id="bing" runat="server" value ="bing" />
            <label for="searchSite" id="Label2">3th SE</label>&nbsp;
            <input type="radio" name="group1"  id="ask" runat="server" value ="ask" />
            <label for="ask">4th SE
            </label>
            <input type="radio" name="group1"  id="mse" runat="server" value ="mse" />
            <label for="ask">5th SE
            </label>

           </fieldset>
			<asp:LinkButton runat="server" ID="action" OnClick="action_Click" Text="Back"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
