using Sandbox.Rcon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sandbox
{
	public class LocomotiveCamera : Camera
	{
		Vector3 lastPos;
		
		public override void Activated()
		{
			var pawn = Local.Pawn;

			if(pawn == null) return;

			Pos = pawn.EyePos + new Vector3(0,0,-10);
			Rot = pawn.EyeRot;

			lastPos = Pos;
		}

		public override void Update()
		{
			var pawn = Local.Pawn;
			if(pawn == null) return;

			var eyePos = pawn.EyePos;
			if(eyePos.Distance(lastPos) < 300)
			{
				Pos = Vector3.Lerp(eyePos.WithZ(lastPos.z),eyePos + new Vector3(0,0,-10), 20.0f * Time.Delta);
			}
			else
			{
				Pos = eyePos + new Vector3(0,0,-10);
			}

			Rot = pawn.EyeRot;

			FieldOfView = 80;

			Viewer = pawn;
			lastPos = Pos;
		}
	}
}
