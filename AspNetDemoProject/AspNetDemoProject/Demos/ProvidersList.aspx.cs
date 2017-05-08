using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class ProvidersList : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			foreach (var dbConnection in AppDomain.CurrentDomain.GetAssemblies()
				.SelectMany(s => s.GetTypes())
				.Where(p => typeof(IDbConnection).IsAssignableFrom(p) && p.IsClass))
			{
				Response.Write(dbConnection + "<br/>");
			}
		}
	}
}