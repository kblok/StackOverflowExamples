using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SERVXZ
{
	class UserConn
	{
		public string Usrname { set; get; }
		public string ConnectionID { set; get; }
	}
	[HubName("XZHUB")]
	public class XZHUB : Hub
	{
		//public static ConcurrentDictionary<string, string> MyUsers = new ConcurrentDictionary<string, string>();
		static List<UserConn> ulist = new List<UserConn>();
		public override Task OnConnected()
		{
			var us = new UserConn();
			us.Usrname = Context.QueryString["username"];
			us.ConnectionID = Context.ConnectionId;
			ulist.Add(us);

			// var username = Context.QueryString["username"];
			// MyUsers.TryAdd(Context.ConnectionId,username);


			return base.OnConnected();
		}

		public void Send()
		{
			Clients.All.broadcastMessage(ulist[0]);

		}
	}
}