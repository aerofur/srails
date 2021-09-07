using Sandbox;
using Sandbox.Joints;
using System;

namespace srails
{
	[Library("ent_bogie")]
	public partial class BogieEntity : Prop
	{
		public RevoluteJoint Joint;
		//public SpringJoint Joint;
		//public GenericJoint Joint;

		public const float CollisionHeight = 99f;
		public const float CollisionRadius = 12f;

		private const float ImmobilitySpeedPercentThreshold = 0.01f;
		private const float ImmobilityTolerance = 1.0f;

		public float Immobility {get; set;}

		public override void Spawn()
		{
			var owner = ConsoleSystem.Caller.Pawn;

			if(owner == null)
			{
				return;
			}
			
			base.Spawn();
			
			SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
			this.EnableAllCollisions = true;
			//this.CollisionGroup = CollisionGroup.Trigger;
			//this.SetInteractsWith(CollisionLayer.WORLD_GEOMETRY | CollisionLayer.Player);
		}

		protected override void OnPhysicsCollision(CollisionEventData eventData)
		{
			var dt = Time.Delta;
			var oldPos = Position;
			var move = new MoveHelper(oldPos,Velocity);

			if(!Velocity.IsNearlyZero())
			{
				move.TryUnstuck();
				move.TryMoveWithStep(dt,25);
			}

			Position = move.Position;
			Velocity = move.Velocity;
		}
	}
}
