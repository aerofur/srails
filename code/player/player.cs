using Sandbox;
partial class LocalPlayer : Player
{
	[Net, Predicted] public ICamera MainCamera {get; set;}
	[Net, Predicted] public Entity Vehicle {get; set;}
	[Net] public PawnController VehicleController {get; set;}
	[Net] public PawnAnimator VehicleAnimator {get; set;}
	[Net, Predicted] public ICamera VehicleCamera {get; set;}

	public override void Respawn()
	{
		SetModel("models/citizen/citizen.vmdl");
		Controller = new WalkController();
		Animator = new StandardPlayerAnimator();
		MainCamera = new FirstPersonCamera();
		Inventory = new Inventory(this);

		EnableAllCollisions = true;
		EnableDrawing = true;
		EnableHideInFirstPerson = true;
		EnableShadowInFirstPerson = true;
	
		Inventory.Add(new PhysGun(),true);
		Inventory.Add(new GravGun());

		if(DevController is NoclipController)
		{
			DevController = null;
		}

		base.Respawn();
	}

	public override PawnAnimator GetActiveAnimator()
	{
		if(VehicleAnimator != null) return VehicleAnimator;
		return base.GetActiveAnimator();
	}


	public override PawnController GetActiveController()
	{
		if(VehicleController != null) return VehicleController;
		if(DevController != null) return DevController;

		return base.GetActiveController();
	}

	public ICamera GetActiveCamera()
	{
		if(MainCamera is PlayerCameraThirdperson) return MainCamera;
		if(VehicleCamera != null) return VehicleCamera;

		return MainCamera;
	}

	public override void Simulate(Client cl)
	{
		base.Simulate(cl);
		SimulateActiveChild(cl, ActiveChild);
		TickPlayerUse();

		if(VehicleController != null && DevController is NoclipController)
		{
			DevController = null;
		}

		var controller = GetActiveController();
		if(controller != null)
		{
			EnableSolidCollisions = !controller.HasTag("noclip");
		}

		if(Input.Pressed(InputButton.View))
		{
			if(Camera is not PlayerCameraThirdperson)
			{
				MainCamera = new PlayerCameraThirdperson();
			}
			else
			{
				MainCamera = new FirstPersonCamera();
			}
		}

		Camera = GetActiveCamera();
	}

	public override void OnKilled()
	{
		base.OnKilled();
		EnableDrawing = false;
		Vehicle = null;
		VehicleController = null;
		VehicleAnimator = null;
		VehicleCamera = null;
		Controller = null;
	}
}