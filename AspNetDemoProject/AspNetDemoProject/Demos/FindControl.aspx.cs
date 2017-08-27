using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class FindControl : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			var divDataID = Master.FindControl("ContentPlaceHolder").FindControl(id: "fullTextArticle") as HtmlControl;
			Response.Write(divDataID.ID);

		}
	}
}