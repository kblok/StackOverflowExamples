using MvcDemoApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace MvcDemoApp.Controllers
{
	public class DownloadController : Controller
	{
		public ActionResult DownloadPdf()
		{
			var mimeType = "application/pdf";
			var filename = "Sample.pdf";
			var filepath = Server.MapPath(Url.Content("~/files/") + filename);
			
			Response.Headers.Remove("Content-Disposition");
			Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename);
			return File(filepath, mimeType);
		}

		[System.Web.Http.HttpPost]
		public ActionResult GenericPostTest([FromBody]string a)
		{
			return Content(a);
		}
	}
}