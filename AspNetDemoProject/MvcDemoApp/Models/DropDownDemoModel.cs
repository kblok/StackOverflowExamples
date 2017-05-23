using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcDemoApp.Models
{
	public class DropDownDemoModel
	{
		public int ClassID { get; set; }

		public dynamic[] GetClassID()
		{
			return new[] { new { Id = 1, ClassID = "Text 1" }, new { Id = 2, ClassID = "Text 2" }, };
		}
	}


}