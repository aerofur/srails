using Sandbox;
using System;

namespace srails
{
	[Library("ent_locomotive", Title = "GE B40-8", Spawnable = true)]
	public partial class LocomotiveEntity : Prop, IUse
	{
		[Net] public Player driver {get; private set;}
		private TimeSince timeSinceDriverLeft;
		private LocomotiveSeatEntity driverseat;
		private LocomotiveControlstand controlstand;

		public override void Spawn()
		{
			var owner = ConsoleSystem.Caller.Pawn;
			if(owner == null) return;
			
			base.Spawn();

			SetModel("models/locomotives/laz/ge/b40_8/b40-8.vmdl");
			SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
			SetupPhysics();

			driverseat = new LocomotiveSeatEntity
			{
				Position = this.Position,
				Rotation = Rotation.From(new Angles(0,this.Rotation.Yaw(),0)),
			};

			driverseat.SetModel("models/locomotives/magtrainslocos/cabseats/cabseat_retrofit.vmdl");
			driverseat.SetParent(this,"seat",new Transform(Vector3.Zero,Rotation.From(0,0,0)));

			controlstand = new LocomotiveControlstand
			{
				Position = this.Position,
				Rotation = Rotation.From(new Angles(0,this.Rotation.Yaw(),0)),
			};

			controlstand.SetModel("models/locomotives/laz/controlstands/kc108/kc108.vmdl");
			controlstand.SetParent(this,"seat",new Transform(Vector3.Zero,Rotation.From(0,0,0)));
		}

		public void SetupPhysics()
		{
			this.MoveType = MoveType.Physics;
			this.UsePhysicsCollision = true;
			this.EnableAllCollisions = true;
			//this.CollisionGroup = CollisionGroup.Debris;
			//this.EnableHitboxes = true;
			//this.SurroundingBoundsMode = SurroundingBoundsType.Physics;
			//this.CollisionGroup = CollisionGroup.Trigger;
			this.EnableTouch = true;
			//this.SetInteractsAs(CollisionLayer.Trigger);
			//this.SetInteractsWith(CollisionLayer.WORLD_GEOMETRY | CollisionLayer.Player);
			//this.SetInteractsExclude(CollisionLayer.Trigger);
		}

		public void Setup()
		{
			var frontbogie = new BogieEntity
			{
				Position = this.Transform.PointToWorld(new Vector3(0,0,-240)),
				Rotation = Rotation.From(new Angles(0,this.Rotation.Yaw(),0)),
			};

			var rearbogie = new BogieEntity
			{
				Position = this.Transform.PointToWorld(new Vector3(0,0,242)),
				Rotation = Rotation.From(new Angles(0,this.Rotation.Yaw(),0)),
			};

			frontbogie.SetModel("models/locomotives/laz/trucks/fb3.vmdl");
			rearbogie.SetModel("models/locomotives/laz/trucks/fb3.vmdl");

			frontbogie.Joint = PhysicsJoint.Revolute
				.From(frontbogie.PhysicsBody, Vector3.Zero)
				.To(this.PhysicsBody, new Vector3(0,0,-240))
				.WithPivot(frontbogie.Position)
				.WithBasis(Rotation.From(new Angles(0,90,0)))
				.Create();

			rearbogie.Joint = PhysicsJoint.Revolute
				.From(rearbogie.PhysicsBody, Vector3.Zero)
				.To(this.PhysicsBody, new Vector3(0,0,242))
				.WithPivot(rearbogie.Position)
				.WithBasis(Rotation.From(new Angles(0,90,0)))
				.Create();

			/*
			frontbogie.Joint = PhysicsJoint.Generic
				.From(frontbogie.PhysicsBody, Vector3.Zero)
				.To(this.PhysicsBody, new Vector3(0,0,-240))
				//.WithMinRestLength(0)
				//.WithMaxRestLength(10)
				.Create();

			rearbogie.Joint = PhysicsJoint.Generic
				.From(rearbogie.PhysicsBody, Vector3.Zero)
				.To(this.PhysicsBody, new Vector3(0,0,242))
				//.WithMinRestLength(0)
				//.WithMaxRestLength(10)
				.Create();
			*/
		}

		protected override void OnDestroy()
		{
			base.OnDestroy();

			if(driver is LocalPlayer player)
			{
				RemoveDriver(player);
			}
		}
		
		public override void Simulate(Client owner)
		{
			if(owner == null) return;
			if(!IsServer) return;

			using(Prediction.Off())
			{
				if(Input.Pressed(InputButton.Use))
				{
					if(owner.Pawn is LocalPlayer player && !player.IsUseDisabled())
					{
						RemoveDriver(player);
						return;
					}
					Log.Trace("Player pressed Use Key!");
				}
				
				if(Input.Down(InputButton.Forward) && driver is not null)
				{
					var force = 200.0f;
					this.PhysicsBody.ApplyForceAt(this.PhysicsBody.MassCenter, (this.PhysicsBody.SelfOrParent.Mass * force));
				}
			}

			//driver.LocalRotation = Rotation.From(new Angles(0,0,0));
			//driver.Rotation = Rotation.From(new Angles(0,0,0));
		}

		private void RemoveDriver(LocalPlayer player)
		{
			driver = null;
			timeSinceDriverLeft = 0;

			if(!player.IsValid()){
				return;
			}

			player.Vehicle = null;
			player.VehicleController = null;
			player.VehicleAnimator = null;
			player.VehicleCamera = null;
			player.Parent = null;

			if(player.PhysicsBody.IsValid())
			{
				player.PhysicsBody.Enabled = true;
				player.PhysicsBody.Position = player.Position;
			}

			Log.Trace("Player left ent_locomotive");
		}

		public bool OnUse(Entity user)
		{
			if(user is LocalPlayer player && player.Vehicle == null && timeSinceDriverLeft > 1.0f)
			{
				player.Vehicle = this;
				player.VehicleController = new LocomotiveController();
				player.VehicleAnimator = new LocomotiveAnimator();
				player.VehicleCamera = new LocomotiveCamera();
				player.SetParent(driverseat,"vehicle_feet_passenger0",new Transform(Vector3.Zero,Rotation.From(0,0,0)));
				//player.LocalPosition = Vector3.Up * -20;
				//player.Rotation = Rotation.From(new Angles(0,this.Rotation.Yaw(),0));
				player.PhysicsBody.Enabled = false;

				driver = player;
				Log.Trace("Player entered ent_locomotive");
			}
			return true;
		}

		public bool IsUsable(Entity user)
		{
			return driver == null;
		}
	}
}
