using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace GenericConsoleTestApp
{
	class Program
	{
		static void Main(string[] args)
		{
			/*
			string input = "Esmael20170101one";
			var match = new Regex("([a-zA-Z]*)(\\d+)([a-zA-Z]*)").Match(input);
			if (match.Success) {
				Console.WriteLine(match.Groups[1].ToString());
				Console.WriteLine(match.Groups[2].ToString());
				Console.WriteLine(match.Groups[3].ToString());
			}
			Console.Read();*/
			/*
			var webClient = new WebClient();
			var json = webClient.DownloadString(@"https://maps.googleapis.com/maps/api/geocode/json?address=1600%20Pennsylvania%20Ave%20NW,%20Washington,%20DC%2020500&key=AIzaSyAKORLziVDRpaIlRs7NrPwGsye9NNn6Mdw");
			var obj = JsonConvert.DeserializeObject<dynamic>(json);
			Console.WriteLine(obj.results[0].geometry.bounds.northeast.lat.Value);
			Console.ReadLine();
			*/
			/*
			string input = "<a>hello</a> <b>hello world</b> <c>I like apple</c>";
			string pattern = (@"(?<=>)(.)?[^<>]*(?=</)");
			Regex match = new Regex(pattern, RegexOptions.IgnoreCase);
			MatchCollection matches = match.Matches(input);

			var dictionary1 = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
			dictionary1.Add("hello", "Hi");
			dictionary1.Add("world", "people");
			dictionary1.Add("apple", "fruit");
			string.Join()
			string output = "";

			output = match.Replace(input, replace => dictionary1.ContainsKey(replace.Value) ? dictionary1[replace.Value] : replace.Value);
			Console.WriteLine(output);
			Console.ReadLine();
			*/
			/*
			var pattern = @" \[(.*?)\]";
			var query = "University of Hawaii [Maui/Oahu/Kaui]";
			Console.WriteLine(Regex.Replace(query, pattern, string.Empty));
			*/

			/*
			RootObject movie2 = JsonConvert.DeserializeObject<RootObject>("{\"ID\":123,\"Content\":[\"{\"NewName\":\"fdsgfd\",\"Type\":\"2\"}\"],\"Notes\":[\"\"],\"Type\":2,\"Subjects\":\"Tysk\",\"Classes\":\"3\",\"Name\":\"fdsgfd\",\"Assign_Content\":[\"[{\"Type\":\"text\",\"Text\":\"dfgfgs\"}]\"],\"Creator\":\"example@example.com\",\"isActive\":\"False\",\"Editor\":\"example@example.com\",\"CreatedDate\":\"2017-08-22T00:00:00\",\"LastModifiedDate\":\"2017-08-22T00:00:00\"}");
			*/
			var str = "{'messages': [{'thread_ID': 1},{'thread_ID': 2}]}";
			var jObj = Newtonsoft.Json.Linq.JObject.Parse(str);
			var jArr = new JArray(jObj["messages"]);
			foreach(var message in jArr.Values())
			{
				Console.WriteLine(message.SelectToken("thread_ID"));
			}
		}
	}

	public class RootObject
	{
		public int ID { get; set; }
		public List<string> Content { get; set; }
		public List<string> Notes { get; set; }
		public int Type { get; set; }
		public string Subjects { get; set; }
		public string Classes { get; set; }
		public string Name { get; set; }
		public List<string> Assign_Content { get; set; }
		public string Creator { get; set; }
		public string isActive { get; set; }
		public string Editor { get; set; }
		public string CreatedDate { get; set; }
		public string LastModifiedDate { get; set; }
	}
}
