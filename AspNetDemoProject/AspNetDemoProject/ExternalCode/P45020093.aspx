<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P45020093.aspx.cs" Inherits="AspNetDemoProject.ExternalCode.P45020093" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<script src="/Scripts/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">

			$(function () {
				$('body').on('keyup', '.taxInput', function (e) {
					totalcalculate();
				});
				window.onload = totalcalculate();
				function totalcalculate() {
					var total = 0;
					for (var i = 0; i < $('.taxInput').length; i++) {
						var temp = $('.taxInput')[i].value;
						temp != "" ? temp : temp = 0;
						total = parseFloat(temp) + parseFloat(total);
						$('[id*=lblTotal]').html(total);
					}
				}
			});
		</script>
		<table border="1" style="width: 50%; text-align: center">
			<tr>
				<td style="width: 100%; vertical-align: text-top;">
					<asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
					<asp:UpdatePanel ID="upPanael" runat="server">
						<ContentTemplate>
							<div>
								<div>
									<table border="1">
										<tr>
											<th>AIRCRAFT REGISTRATION #:
											</th>
											<th>RETURNED VALUE<br />
											</th>
											<th>FOR TAX OFFICE USE ONLY<br />
											</th>
											<th>&nbsp;</th>
										</tr>
										<asp:Repeater ID="rptAircraft" runat="server">
											<ItemTemplate>
												<tr>
													<td>
														<asp:TextBox ID="TextBox1" runat="server" Width="530px" Text='<%#Eval("boatregNum") %>'></asp:TextBox>
													</td>
													<td>
														<asp:TextBox ID="TextBox2" runat="server" CssClass="taxInput"  Width="280px" Text='<%#Eval("taxpayerret") %>'></asp:TextBox>
													</td>
													<td>
														<asp:TextBox ID="TextBox3" runat="server" Width="256px" Text='<%#Eval("fortaxofficeonly") %>'></asp:TextBox>
													</td>
													<td>&nbsp;</td>
												</tr>
											</ItemTemplate>
										</asp:Repeater>
										<tr>
											<td>
												<asp:TextBox ID="txtboatregNum" runat="server" Width="530px"></asp:TextBox>
											</td>
											<td>
												<asp:TextBox ID="txttaxpayerret" CssClass="taxInput" runat="server" Width="280px"></asp:TextBox>
											</td>
											<td>
												<asp:TextBox ID="txtfortaxofficeonly" runat="server" Width="256px"></asp:TextBox>
											</td>
											<td style="white-space: nowrap;">
												<asp:Button ID="btnAdd" runat="server" Width="70px" Text="Add New" OnClick="btnAdd_Click" />
											</td>
										</tr>
									</table>
								</div>
							</div>
						</ContentTemplate>
					</asp:UpdatePanel>
				</td>
			</tr>
		</table>
		<table border="1" style="width: 87%; text-align: center">
			<tr>
				<td style="width: 43.6%;">TOTAL&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>
				</td>
				<td style="width: 23.2%;">
					<asp:Label ID="lblTotal" runat="server"></asp:Label>
				</td>
				<td class="auto-style4"></td>
			</tr>
		</table>
	</form>
</body>
</html>
