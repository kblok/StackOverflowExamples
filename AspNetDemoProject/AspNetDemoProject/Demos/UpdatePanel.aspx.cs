using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	
	public partial class UpdatePanel : System.Web.UI.Page
	{
		private static List<dynamic> list = new List<dynamic>();


		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSendComment_Click(object sender, EventArgs e)
		{
			list.Add(new { Text = txtComment.Text });
		}

		protected void Page_PreRender(object sender, EventArgs e)
		{
			listComment.DataSource = list;
			listComment.DataBind();
		}

		protected void redirector_Click(object sender, EventArgs e)
		{
			ScriptManager.RegisterClientScriptBlock(this, GetType(), "redirect",
				"location.href = 'ListViewDemo.aspx'; alert('test');", true);
		}
	}
}