using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class DataListDemo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				SubjectAdded.DataSource = new[] {
					new {Id= 1, Subject = "Text 1"  },
					new {Id= 2, Subject = "Text 2"  },
				};
				SubjectAdded.DataBind();
			}
		}

		public void Page_PreRender(object sender, EventArgs e)
		{
			for (int i = 0; i < SubjectAdded.Items.Count; i++)
			{
				string feeTB = ((TextBox)SubjectAdded.Items[i].FindControl("FeeBox")).Text;
				string subjectNameLb = ((Label)SubjectAdded.Items[i].FindControl("SubjectLbl")).Text;

				Response.Write($"{subjectNameLb}: {feeTB}<br/>");
			}
		}

		protected void action_Click(object sender, EventArgs e)
		{

		}
	}
}