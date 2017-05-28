using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNetDemoProject.App_Code
{
	public class ErrorModule : IHttpModule
	{
		public void Init(HttpApplication app)
		{
			app.Error += OnError;
		}

		public void OnError(object obj, EventArgs args)
		{
			// At this point we have information about the error
			var ctx = HttpContext.Current;
		}

		public void Dispose() { }
	}
}