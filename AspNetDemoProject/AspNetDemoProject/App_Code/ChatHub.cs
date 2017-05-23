using Microsoft.AspNet.SignalR.Hubs;
using Microsoft.AspNet.SignalR;

namespace Test.Server
{
	[HubName("chatHub")]
	public class ChatHub : Hub
	{
		public void send(string message)
		{
			Clients.All.addMessage(message);
		}
	}
}