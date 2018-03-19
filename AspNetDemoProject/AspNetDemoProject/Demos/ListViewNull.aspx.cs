using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class ListViewNull : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				var table = new DataTable();
				table.Columns.Add("title", typeof(string));

				table.Rows.Add("TEST");
				table.Rows.Add(DBNull.Value);

				
				listView.DataSource = table.Select().CopyToDataTable();
				listView.DataBind();
			}
			

			
		}
	}
}