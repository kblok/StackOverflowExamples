using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETDEMOPROJECT
{
	public partial class WebMethodTest : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		[Serializable]
		public struct FuncResult
		{
			public string MainResponse;
			public string[] ExtraArgsForMagicFunction;
		}
		[WebMethod]
		[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
		public static FuncResult TestFunc(string val)
		{
			return new FuncResult()
			{
				MainResponse = val + "Response",
				ExtraArgsForMagicFunction = new[] { "Some Extra Args" }
			};
		}
	}
}