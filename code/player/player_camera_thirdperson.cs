namespace Sandbox
{
	public class PlayerCameraThirdperson : Camera
	{
		[ConVar.Replicated]
		public static bool Thirdperson_collision {get; set;} = true;
		private float cameraDistance = 130;
        private readonly float cameraDistanceMax = 500;
        private readonly float cameraDistanceMin = 50;

		public override void Update()
		{
			if(Local.Pawn is not AnimEntity pawn) return;

			Position = pawn.Position;
			Vector3 targetPos;

			var center = pawn.Position + Vector3.Up * 64;

            Position = center;
            Rotation = Rotation.FromAxis(Vector3.Up,4) * Input.Rotation;

            float distance = cameraDistance * pawn.Scale;
            targetPos = Position + Input.Rotation.Right * ((pawn.CollisionBounds.Maxs.x + 10) * pawn.Scale);
            targetPos += Input.Rotation.Forward * -distance;

			if(Thirdperson_collision)
			{
				var tr = Trace.Ray(Position,targetPos)
					.Ignore(pawn)
					.Radius(8)
					.Run();

				Position = tr.EndPos;
			}
			else
			{
				Position = targetPos;
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
                        cameraDistance += 10*-input.MouseWheel;
                    }
                }
                else
                {
                    if(cameraDistance < cameraDistanceMax)
                    {
                        cameraDistance += 10*-input.MouseWheel;
                    }
                }
            }

			base.BuildInput(input);
		}
	}
}
