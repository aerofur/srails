namespace Sandbox
{
	public class PlayerCameraThirdperson : Camera
	{
		[ConVar.Replicated]
		public static bool thirdperson_collision {get; set;} = true;
		private float cameraDistance = 130;
        private float cameraDistanceMax = 500;
        private float cameraDistanceMin = 50;

		public override void Update()
		{
			var pawn = Local.Pawn as AnimEntity;
			var client = Local.Client;

			if(pawn == null) return;

			Pos = pawn.Position;
			Vector3 targetPos;

			var center = pawn.Position + Vector3.Up * 64;

            Pos = center;
            Rot = Rotation.FromAxis(Vector3.Up,4) * Input.Rotation;

            float distance = cameraDistance * pawn.Scale;
            targetPos = Pos + Input.Rotation.Right * ((pawn.CollisionBounds.Maxs.x + 10) * pawn.Scale);
            targetPos += Input.Rotation.Forward * -distance;

			if(thirdperson_collision)
			{
				var tr = Trace.Ray(Pos,targetPos)
					.Ignore(pawn)
					.Radius(8)
					.Run();

				Pos = tr.EndPos;
			}
			else
			{
				Pos = targetPos;
			}

			FieldOfView = 70;
			Viewer = null;
		}

		public override void BuildInput(InputBuilder input)
		{
            if(input.MouseWheel != 0)
            {
                if(input.MouseWheel == 1)
                {
                    if(cameraDistance > cameraDistanceMin)
                    {
                        cameraDistance = cameraDistance + (10*-input.MouseWheel);
                    }
                }
                else
                {
                    if(cameraDistance < cameraDistanceMax)
                    {
                        cameraDistance = cameraDistance + (10*-input.MouseWheel);
                    }
                }
            }

			base.BuildInput(input);
		}
	}
}