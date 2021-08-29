using Sandbox;
using Sandbox.Joints;

namespace srails
{
	[Library("ent_locomotive_seat")]
	public partial class LocomotiveSeatEntity : Prop
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
}
