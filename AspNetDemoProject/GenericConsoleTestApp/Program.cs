using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace GenericConsoleTestApp
{
	class Program
	{
		static void Main(string[] args)
		{
			string input = "Hi Team,\r\n\r\n \r\n\r\nPlease create 7025-45-365-14, 9851-98-524-12\r\n\r\n5741-55-452-45.\r\n\r\n    \r\n\r\nThanks\r\n";
			var match = new Regex("Please create ([0-9-, ]*)").Match(input);
			if (match.Success) {
				foreach (var item in match.Groups["$1"].ToString().Split(','))
				{
					Console.Write(item.Trim());
				}
			}
			Console.Read();
		}
	}
}
