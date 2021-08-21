using Sandbox;
using System.Collections.Generic;
using Sandbox.UI;
using System.Numerics;
using Sandbox.UI.Dev;
using Sandbox.Internal;

[Library]
public partial class MenuSystem : Sandbox.IMenuAddon
{
	MainMenuPanel Menu;
	DevLayer Dev;
	LoadingScreen Loading;

	public override void Init()
	{
		// Creation order is important
		// Panel created first will be on top

		Dev = new DevLayer();
		MenuOverlay.Init();
		Loading = new LoadingScreen();
		Menu = new MainMenuPanel();

		MenuTools.SetDevLayer( Dev );
	}

	public override void Shutdown()
	{
		MenuOverlay.Shutdown();

		Menu?.Delete();
		Menu = null;

		Loading?.Delete();
		Loading = null;

		Dev?.Delete();
		Dev = null;
	}

	public override void SetMenuScreen( bool show )
	{
		Menu.SetClass( "hidden", !show );

		if ( show )
		{
			Menu.Focus();
		}
	}

	public override void SetLoading( bool show )
	{
		Loading.SetClass( "hidden", !show );
	}

	public override void OnLoadProgress( float progress, string title, string subtitle, string statistic )
	{
		Loading.UpdateProgress( progress, title, subtitle, statistic );
	}

	public override void DevNotice( string category, string icon, string title, int seconds, string type, string information )
	{
		DevLayer.DevNoticeAdd( category, type, icon, title, seconds, information );
	}

	public override void Popup( string type, string title, string subtitle )
	{
		Menu?.ShowPopup( type, title, subtitle );
	}
}