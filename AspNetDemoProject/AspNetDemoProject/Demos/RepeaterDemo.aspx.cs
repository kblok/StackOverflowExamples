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

			if (!IsPostBack)
			{
				repeater.DataSource = new[] {
					new {Id= 1, Text = "Text 1"  },
					new {Id= 2, Text = "Text 2"  },
				};
			}
			repeater.DataBind();

		}

		protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
		{
			if (e.CommandName == "Delete")
			{
				Response.Write($"Do something with {e.CommandArgument}");
			}

		}

		protected void repeater_ItemCreated(object sender, RepeaterItemEventArgs e)
		{
			/*
			var MyList = (DropDownList)e.Item.FindControl("drlApplicationStatus");
			MyList.SelectedIndexChanged += drlApplicationStatus_SelectedIndexChanged;
			*/

		}

		private void drlApplicationStatus_SelectedIndexChanged(object sender, EventArgs e)
		{
			var drlApplicationStatus = (DropDownList)sender;
			Response.Write(drlApplicationStatus.SelectedValue);
			Response.Write(drlApplicationStatus.SelectedItem.Text);

		}

		protected void repeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
		{
			/*
			Image img = e.Item.FindControl("brandImage") as Image;
			img.ImageUrl = ((dynamic)e.Item.DataItem).Text;
			*/
		}
	}
}