using Sandbox;
using Sandbox.UI.Construct;
using System;
using System.IO;
using System.Threading.Tasks;

public partial class Gamemode : Sandbox.Game
{
	public Gamemode()
	{
		if(IsServer)
		{
			Log.Info("My Gamemode Has Created Serverside!");
			new GamemodeHud();
		}

		if(IsClient)
		{
			Log.Info("My Gamemode Has Created Clientside!");
		}
	}

	public override void ClientJoined(Client client)
	{
		base.ClientJoined(client);

		var player = new LocalPlayer();
		client.Pawn = player;

		player.Respawn();
	}

	[ServerCmd("spawn")]
	public static void Spawn(string modelname)
	{
		var owner = ConsoleSystem.Caller?.Pawn;

		if(ConsoleSystem.Caller == null) return;

		var startPos = owner.EyePos;
		var dir = owner.EyeRot.Forward;

		var tr = Trace.Ray(startPos,startPos + dir * 10000.0f)
			.UseHitboxes()
			.Ignore(owner)
			.Run();

		if(!tr.Hit) return;
		if(!tr.Entity.IsValid()) return;

		var ent = new Prop();
		ent.Position = tr.EndPos;
		ent.Rotation = Rotation.From(new Angles(0,owner.EyeRot.Angles().yaw,0)) * Rotation.FromAxis(Vector3.Up,180);
		ent.SetModel(modelname);
		ent.Position = tr.EndPos - Vector3.Up * ent.CollisionBounds.Mins.z;
	}

	[ServerCmd("spawn_entity")]
	public static void SpawnEntity(string entName)
	{
		var owner = ConsoleSystem.Caller.Pawn;
		var attribute = Library.GetAttribute(entName);

		if(owner == null) return;
		if(attribute == null || !attribute.Spawnable) return;

		var startPos = owner.EyePos;
		var dir = owner.EyeRot.Forward;

		var tr = Trace.Ray(startPos,startPos + dir * 10000.0f)
			.UseHitboxes()
			.Ignore(owner)
			.Run();

		if(!tr.Hit) return;
		if(!tr.Entity.IsValid()) return;

		var ent = Library.Create<Entity>(entName);
		if (ent is BaseCarriable && owner.Inventory != null)
		{
			if (owner.Inventory.Add(ent,true))
			{
				return;
			}
		}

		ent.Position = tr.EndPos;
		ent.Rotation = Rotation.From(new Angles(0,owner.EyeRot.Angles().yaw,0));

		Log.Info( $"ent: {ent}" );
	}

	[ServerCmd("spawn_locomotive")]
	public static void SpawnLocomotive(string entName)
	{
		Log.Trace($"[DEBUG] Spawning Locomotive: {entName}");
		var owner = ConsoleSystem.Caller.Pawn;
		var attribute = Library.GetAttribute(entName);

		if(owner == null) return;
		if(attribute == null || !attribute.Spawnable) return;

		var startPos = owner.EyePos;
		var dir = owner.EyeRot.Forward;

		var tr = Trace.Ray(startPos,startPos + dir * 10000.0f)
			.UseHitboxes()
			.Ignore(owner)
			.Run();

		if(!tr.Hit) return;
		if(!tr.Entity.IsValid()) return;

		var ent = new LocomotiveEntity
		{
			Position = tr.EndPos + tr.Normal * 10 + new Vector3(0,0,50),
			Rotation = Rotation.From(new Angles(0,owner.EyeRot.Angles().yaw,90)),
		};

		Log.Info("[DEBUG] Created new entity: \"LocomotiveEntity\"");
		ent.Setup();
		Log.Trace($"[DEBUG] Finished creating: {ent}");
	}

	public override void DoPlayerNoclip(Client player)
	{
		if(player.Pawn is Player basePlayer)
		{
			if(basePlayer.DevController is NoclipController)
			{
				Log.Info("Noclip Mode Off");
				basePlayer.DevController = null;
			}
			else
			{
				Log.Info("Noclip Mode On");
				basePlayer.DevController = new NoclipController();
			}
		}
	}
}