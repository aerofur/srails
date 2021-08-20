using Sandbox.UI;

public partial class GamemodeHud : Sandbox.HudEntity<RootPanel>
{
	public GamemodeHud()
	{
		if (IsClient)
		{
			RootPanel.SetTemplate("/ui/html/hud.html");
			RootPanel.StyleSheet.Load("/ui/SandboxHud.scss");
			RootPanel.AddChild<SpawnMenu>();
			RootPanel.AddChild<InventoryBar>();
		}
	}
}