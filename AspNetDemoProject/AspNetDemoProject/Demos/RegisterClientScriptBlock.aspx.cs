using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class RegisterClientScriptBlock : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void lnk_Click(object sender, EventArgs e)
		{
			ScriptManager.RegisterStartupScript(this, GetType(), "t ", "SelectionTextBox();", true);
		}
	}
}