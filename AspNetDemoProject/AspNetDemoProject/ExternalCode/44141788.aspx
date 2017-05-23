<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="44141788.aspx.cs" Inherits="AspNetDemoProject.ExternalCode._44141788" %>

<!DOCTYPE html>
<html>
<head>
	<base target="_self" />
	<title>MySystem Test</title>
	<link type="text/css" rel="stylesheet" href="site/styles/Common/Core.css" />
	<script type="text/javascript" src="scripts/JSUI.js"></script>
</head>
<body onload="loadWindow();" onunload="unloadWindow();">
	<form runat="server">
		<div class="xCfg" popout>
			<div class="xTb" id="POPOUP_TOOLBAR">
				<div class="xTbBtns">
					<a id="b12" onclick="return expTbClick(event, 12);" href="">
						<img src=""><span></span>
					</a>
					<a id="b14" onclick="return expTbClick(event, 14);" href="">
						<img src="">
					</a>
				</div>
			</div>


			<div class="xBody" id="POPOUT_BODY" scrollable>
				<div class="xPage" id="bodyContent" notitle>
					<div class="xPopOutLargeText" id="loading"></div>
					<div class="xPopOutLargeText" id="allHidden" style="display: none;"></div>
				</div>
			</div>
			<div class="xSb" id="POPOUP_STATUSBAR"></div>
		</div>
	</form>
</body>
</html>
