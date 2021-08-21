using Sandbox;
using Sandbox.UI;
using Sandbox.UI.Construct;
using System.Linq;
using System.Threading.Tasks;

[Library]
public partial class MenuUI : Panel
{
    public static MenuUI Instance;
    public bool Visble = false;
    private TimeSince lastKeyed;

    public MenuUI()
	{
        Instance = this;

        StyleSheet.Load("/ui/menu/menu.scss");
    }

	public override void Tick()
	{
		base.Tick();

        if(Input.Pressed(InputButton.Score))
        {
            if(lastKeyed > 0.1f)
            {
                if(Visble == true)
                {
                    Visble = false;
                    lastKeyed = 0;
                    Parent.SetClass("hidden",!Visble);
                }
                else
                {
                    Visble = true;
                    lastKeyed = 0;
                    Parent.SetClass("hidden",!Visble);
                }
            }
        }
	}
}