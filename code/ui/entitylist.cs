using Sandbox;
using Sandbox.UI;
using Sandbox.UI.Construct;
using Sandbox.UI.Tests;
using System.Linq;

[Library]
public partial class EntityList : Panel
{
	VirtualScrollPanel Canvas;

	public EntityList()
	{
		AddClass( "spawnpage" );
		AddChild( out Canvas, "canvas" );

		Canvas.Layout.AutoColumns = true;
		Canvas.Layout.ItemSize = new Vector2( 100, 100 );
		Canvas.OnCreateCell = ( cell, data ) =>
		{
			var entry = (LibraryAttribute)data;
			var btn = cell.Add.Button( entry.Title );
			btn.AddClass( "icon" );

			if(entry.Name == "ent_locomotive")
			{
				btn.AddEventListener( "onclick", () => ConsoleSystem.Run( "spawn_locomotive", entry.Name ) );
			}
			else if(entry.Name == "ent_testcube")
			{
				btn.AddEventListener( "onclick", () => ConsoleSystem.Run( "spawn_testcube", entry.Name ) );
			}
			else
			{
				btn.AddEventListener( "onclick", () => ConsoleSystem.Run( "spawn_entity", entry.Name ) );
			}

			btn.Style.Background = new PanelBackground
			{
				Texture = Texture.Load( $"/entity/{entry.Name}.png", false )
			};
		};

		//spawn_locomotive

		var ents = Library.GetAllAttributes<Entity>().Where(x => x.Spawnable).OrderBy(x => x.Title).ToArray();

		foreach ( var entry in ents )
		{
			Canvas.AddItem( entry );
		}
	}
}
