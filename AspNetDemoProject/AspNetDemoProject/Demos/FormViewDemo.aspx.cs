using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETDEMOPROJECT
{
	public partial class FormViewDemo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				rgAssnmtList.DataSource = new[] {
					new {Id= 1, Text = "Text 1"  },
					new {Id= 2, Text = "Text 2"  },
				};
				rgAssnmtList.DataBind();
			}
		}

		protected void rgAssnmtList_SelectedIndexChanged(object sender, EventArgs e)
		{
			var list= new List<dynamic>() {
				new {Id= 1, Text = "Text"  },
				new {Id= 2, Text = "Text"  },
			};
			fvAssnmtDets.DataSource = list;
			fvAssnmtDets.DataBind();
			fvAssnmtDets.FindControl("DeleteButton").Visible = rgAssnmtList.SelectedDataKey.Value.ToString() == "1";
		}

		protected void rgAssnmtList_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			
		}
	}
}