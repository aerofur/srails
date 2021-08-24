using Sandbox;
using Sandbox.Joints;

[Library("ent_locomotive_controlstand")]
public partial class LocomotiveControlstand : Prop
{
	public override void Spawn()
	{
		var owner = ConsoleSystem.Caller.Pawn;

		if(owner == null)
		{
			return;
		}
		
		base.Spawn();
        
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic, false);
		this.EnableAllCollisions = false;
	}
}