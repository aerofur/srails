using Sandbox;
using Sandbox.UI;
using Sandbox.UI.Construct;
using System;
using System.Reflection.Metadata;
using System.Threading.Tasks;

[Library]
public partial class SpawnMenu : Panel
{
    public static SpawnMenu Instance;

    public SpawnMenu()
	{
        Instance = this;

        StyleSheet.Load("/ui/scss/spawnmenu.scss");

		var left = Add.Panel( "left" );
		{
			var tabs = left.AddChild<ButtonGroup>();
			tabs.AddClass( "tabs" );

			var body = left.Add.Panel( "body" );

			{
				var props = body.AddChild<SpawnList>();
				tabs.SelectedButton = tabs.AddButtonActive( "Props", ( b ) => props.SetClass( "active", b ) );

				var ents = body.AddChild<EntityList>();
				tabs.AddButtonActive( "Entities", ( b ) => ents.SetClass( "active", b ) );
			}
		}
    }

	public override void Tick()
	{
		base.Tick();
		Parent.SetClass("spawnmenuopen", Input.Down(InputButton.Menu));
	}

    public override void OnHotloaded()
    {
        Log.Info("hotloaded spawnmenu!");
    }
}