<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CodeBlocksTests.aspx.cs" Inherits="ASPNETDEMOPROJECT.CodeBlocksTests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div data-decimal="<%=decimalNumber %>">
			Culture from the Page Load is: <%= System.Threading.Thread.CurrentThread.CurrentCulture%> Decimal is <%=decimalNumber %><br />
			Culture from the Page Load is: <%= System.Threading.Thread.CurrentThread.CurrentCulture%> <%="Decimal is " + decimalNumber %><br />
			Culture from the Page Load is: <%= System.Threading.Thread.CurrentThread.CurrentCulture%> Decimal is <%=decimalNumber.ToString() %>
		</div>
    </form>
</body>
</html>
