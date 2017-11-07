using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class PostTarget : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string json;
			using (var reader = new StreamReader(Request.InputStream))
			{
				json = reader.ReadToEnd();
			}
			
			var country = Request.Form["country"];
			var title = Request.Form["title"];
		}
	}
}