using Sandbox;
using Sandbox.Joints;

[Library("ent_bogie")]
public partial class BogieEntity : Prop
{
    public RevoluteJoint Joint;
    //public SpringJoint Joint;
    //public GenericJoint Joint;

	public override void Spawn()
	{
		var owner = ConsoleSystem.Caller.Pawn;

		if(owner == null)
		{
			return;
		}
		
		base.Spawn();
        
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic, true);
		this.EnableAllCollisions = true;
		//this.CollisionGroup = CollisionGroup.Trigger;
		//this.SetInteractsWith(CollisionLayer.WORLD_GEOMETRY | CollisionLayer.Player);
	}
}