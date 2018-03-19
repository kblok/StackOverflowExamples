using MvcDemoApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcDemoApp.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}

		public ActionResult DropDownDemo()
		{
			var list = new List<dynamic>()
			{
				new { Title = "Title 1", Id = "Id 1" },
				new { Title = "Title 2", Id = "Id 2" }
			};

			ViewBag.CategoryList =
				from item in list
				select new SelectListItem
				{
					Text = item.Title + " FooBar",
					Value = item.Id
				};

			return View(new DropDownDemoModel());
		}
	}
}