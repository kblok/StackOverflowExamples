using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETDEMOPROJECT
{
	public partial class RepeaterDemo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			repeater.DataSource = new[] {
				new {Id= 1, Text = "Text 1"  },
				new {Id= 2, Text = "Text 2"  },
			};
			repeater.DataBind();
		}

		protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
		{
			if (e.CommandName == "Delete")
			{
				Response.Write($"Do something with {e.CommandArgument}");
			}

		}
	}
}