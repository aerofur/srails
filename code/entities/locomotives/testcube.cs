using Sandbox;

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
        SetModel("models/maya_testcube_100.vmdl");
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic, true);
		this.EnableAllCollisions = true;
	}
}