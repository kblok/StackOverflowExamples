using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class InnerHtmlTest : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			searchbox.InnerHtml = "<img src=\"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435779374i/25622861._SY180_.jpg\"/>";
		}
	}
}