using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETDEMOPROJECT
{
	public partial class CodeBlocksTests : System.Web.UI.Page
	{
		public decimal decimalNumber = 2.34m;

		protected override void InitializeCulture()
		{
			Culture = UICulture = "es";
			Thread.CurrentThread.CurrentCulture = Thread.CurrentThread.CurrentUICulture = new CultureInfo("es");
		
			base.InitializeCulture();
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			Response.Write("From Response.Write");
			Response.Write(decimalNumber);
			Response.Write("<br/>");

			Response.Output.WriteLine("From Response.Output.Write");
			Response.Output.WriteLine(decimalNumber);

		}


		public override void RenderControl(HtmlTextWriter writer)
		{
			writer.Write(decimalNumber);
			base.RenderControl(writer);
		}
	}
}