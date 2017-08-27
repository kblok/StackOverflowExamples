using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	
	public partial class DataDash : System.Web.UI.Page
	{
		protected string alert = "Hi";
		protected void Page_Load(object sender, EventArgs e)
		{
			btn1.Attributes["data-dynamic-button"] = "Im 1";
			btn2.Attributes["data-dynamic-button"] = "Im 2";
			Page.DataBind();
		}
	}
}