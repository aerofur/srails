using Sandbox;
using Sandbox.UI;
using Sandbox.UI.Construct;
using System.Linq;
using System.Threading.Tasks;

public partial class GamemodeHud : Sandbox.HudEntity<RootPanel>
{
	public GamemodeHud()
	{
		if(IsClient)
		{
			//RootPanel.SetTemplate("/ui/html/hud.html");
			RootPanel.SetTemplate("/ui/menu/menu.html");
			RootPanel.StyleSheet.Load("/ui/SandboxHud.scss");
			RootPanel.AddChild<SpawnMenu>();
			RootPanel.AddChild<InventoryBar>();
			RootPanel.AddChild<MenuUI>();
		}
	}
}