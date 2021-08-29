using Sandbox;
using System;

namespace srails
{
	[Library("ent_testcube", Title = "testcube_ent", Spawnable = true)]
	public partial class TestcubeEntity : Prop
	{
		public override void Spawn()
		{
			var owner = ConsoleSystem.Caller.Pawn;

			if(owner == null)
			{
				return;
			}
			
			base.Spawn();
			SetModel("models/locomotives/laz/testblock.vmdl");
			//SetModel("models/locomotives/laz/trucks/fb3.vmdl");
			SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
			this.EnableAllCollisions = true;
		}

		public override void Simulate(Client owner)
		{
			Log.Info("i am running now yay");
		}

		/*
		[Event("client.tick")]
		protected void ClientTick()
		{
			DebugOverlay.Axis(this.Position + new Vector3(0,0,50),this.Rotation,80,0,true);
		}

		[Event.Frame]
		public void OnFrame()
		{
			this.GlowState = GlowStates.GlowStateOn;
			this.GlowDistanceStart = 0;
			this.GlowDistanceEnd = 1000;
			this.GlowColor = new Color(255,230,0,255);
			this.GlowActive = true;
		}
		*/
	}
}
