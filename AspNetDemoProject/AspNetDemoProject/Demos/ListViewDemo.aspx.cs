using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class ListViewDemo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				listView.DataSource = new[] {
					new {Id= 1, Text = "Text 1"  },
					new {Id= 2, Text = "Text 2"  },
				};
				listView.DataBind();
			}
			

			
		}
	}
}