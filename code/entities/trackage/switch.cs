using Sandbox;
using System;
using System.Text.Json.Serialization;

namespace srails
{
	/// <summary>
	/// Trakpak3 Switch Entity
	/// </summary>
	[Library("tp3_switch")]
	[Hammer.Model]
	[Hammer.RenderFields]
	public partial class Tp3_switch : AnimEntity
	{
		/// <summary>
		/// The sequence to use when the switch is in its normal position (idle).
		/// </summary>
		[Property("seq_idle", Title = "Idle Seq")]
		public string Seq_idle {get; set;} = "idle";

		/// <summary>
		/// The sequence to use when the switch is being thrown Diverging/Reverse.
		/// </summary>
		[Property("seq_throw", Title = "Throw Seq")]
		public string Seq_throw {get; set;} = "throw";

		public enum InitalPosition
		{
			Main,
			Diverging
		}

		/// <summary>
		/// The switch will throw itself to this position immediately when the map starts, this should match the switchstand.
		/// </summary>
		[Property("targetstate", Title = "Initial Position")]
		public InitalPosition Targetstate {get; set;} = InitalPosition.Main;

		/// <summary>
		/// The model to use when the switch is in Main/Normal position.
		/// </summary>
		[Property("track_mn", Title = "Model MN", FGDType = "studio")]
		public string Track_mn {get; set;} = "";

		/// <summary>
		/// The model to use when the switch is in Diverging/Reverse position.
		/// </summary>
		[Property("track_dv", Title = "Model DV", FGDType = "studio")]
		public string Track_dv {get; set;} = "";

		public bool Switched = false;
		public bool Switching = false;

		public override void Spawn()
		{
			base.Spawn();
			SetModel(Targetstate == InitalPosition.Main ? Track_mn : Track_dv);
			SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
			CurrentSequence.Name = Seq_idle;
			Switched = Targetstate != InitalPosition.Main;
		}

		public void SwitchAnimate()
		{
			CurrentSequence.Name = Seq_throw;
			Switching = true;
		}

		public void SwitchSetCycle(float cycle)
		{
			this.PlaybackRate = cycle;
		}

		public void SwitchThrow(bool Diverging)
		{
			if(Diverging)
			{
				SetModel(Track_dv);
				CurrentSequence.Name = Seq_idle;
				Switched = true;
				Switching = false;
			}
			else
			{
				SetModel(Track_mn);
				CurrentSequence.Name = Seq_idle;
				Switched = false;
				Switching = false;
			}			
		}
	}
}
