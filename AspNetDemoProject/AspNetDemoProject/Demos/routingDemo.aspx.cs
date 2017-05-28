using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetDemoProject.Demos
{
	public partial class routingDemo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Response.Write(Request.Url.ToString().Length);
			Response.Write("<br/>");
			Response.Write(Request.QueryString["url"]);
			/*
			if (!string.IsNullOrEmpty(Request.QueryString["url"])){
				Response.Redirect("/Demos/routingDemo.aspx?finalURL=" + Request.QueryString["url"].Replace("route", ""), false);
			}*/
		}
	}
}