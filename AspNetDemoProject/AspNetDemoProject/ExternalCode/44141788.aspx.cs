using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.ExternalCode
{
	public partial class _44141788 : System.Web.UI.Page
	{
		protected Literal uiStyleLink;
		protected Literal litScript;

		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);
			
		}


		protected void Page_PreRender(object sender, EventArgs e)
		{
			ClientScript.RegisterStartupScript(GetType(),  "alert", "alert('hey');", true);
			
		}
	}
}