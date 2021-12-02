using Sandbox;
using System;
using System.Text.Json.Serialization;

namespace srails
{
	/// <summary>
	/// Trakpak3 Switchstand Entity
	/// </summary>
	[Library("tp3_switch_lever_anim")]
	[Hammer.Model]
	[Hammer.RenderFields]
	public partial class Tp3_switch_lever_anim : AnimEntity, IUse
	{
		private TimeSince timeSinceThrow;

		/// <summary>
		/// The default sequence to use when the switch is locked in its Main/Normal position.
		/// </summary>
		[Property("seq_idle_close", Title = "Idle Main/Normal Seq")]
		public string Seq_idle_close {get; set;} = "idle_close";

		/// <summary>
		/// The sequence to use when the switch is locked in its Diverging/Reverse position.
		/// </summary>
		[Property("seq_idle_open", Title = "Idle Diverging/Reverse Seq")]
		public string Seq_idle_open {get; set;} = "idle_open";

		/// <summary>
		/// The sequence to use when the switch is being thrown Diverging/Reverse.
		/// </summary>
		[Property("seq_throw_open", Title = "Throw Diverging/Reverse Seq")]
		public string Seq_throw_open {get; set;} = "throw_open";

		/// <summary>
		/// The sequence to use when the switch is being thrown Main/Normal.
		/// </summary>
		[Property("seq_throw_close", Title = "Throw Main/Normal Seq")]
		public string Seq_throw_close {get; set;} = "throw_close";

		public enum InitalPosition
		{
			Main,
			Diverging
		}

		/// <summary>
		/// The lever will throw itself to this position immediately when the map starts.
		/// </summary>
		[Property("targetstate", Title = "Initial Position")]
		public InitalPosition Targetstate {get; set;} = InitalPosition.Main;

		/// <summary>
		/// The switch you are wanting to change/target (switch requires a name).
		/// </summary>
		[Property("targetswitch", Title = "Target Switch"), FGDType("target_destination")]
		public string Targetswitch {get; set;}

		//[Property, ResourceType( "vmdl" )]

		private Tp3_switch SwitchEntity;

		public override void Spawn()
		{
			base.Spawn();
			SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
			CurrentSequence.Name = Targetstate == InitalPosition.Main ? Seq_idle_close : Seq_idle_open;
		}

		[Event.Tick.Server]
		protected void Tick()
		{
			if(SwitchEntity.IsValid() == false){ //will only run till it finds the switch
				SwitchEntity = (Tp3_switch) Entity.FindByName(Targetswitch);
			}

			if(SwitchEntity.Switching && SwitchEntity.IsValid()){
				ThrowLinked();
			}
		}

		public bool OnUse(Entity user)
		{
			if(user is LocalPlayer && timeSinceThrow > 1.0f)
			{
				Throw();
			}
			
			timeSinceThrow = 0;
			Log.Trace(this.GetModelName());
			return true;
		}
		
		public async void Throw()
		{
			AnimateSwitch(SwitchEntity);

			if(CurrentSequence.Name == Seq_idle_close)
			{
				CurrentSequence.Name = Seq_throw_open;
				SwitchEntity.SwitchAnimate();
				await Task.DelaySeconds(CurrentSequence.Duration);
				CurrentSequence.Name = Seq_idle_open;
				SwitchEntity.SwitchThrow(true);
			}
			else if(CurrentSequence.Name == Seq_idle_open)
			{
				CurrentSequence.Name = Seq_throw_close;
				SwitchEntity.SwitchAnimate();
				await Task.DelaySeconds(CurrentSequence.Duration);
				CurrentSequence.Name = Seq_idle_close;
				SwitchEntity.SwitchThrow(false);
			}		
		}

		public async void ThrowLinked()
		{
			if(CurrentSequence.Name == Seq_idle_close)
			{
				CurrentSequence.Name = Seq_throw_open;
				await Task.DelaySeconds(CurrentSequence.Duration);
				CurrentSequence.Name = Seq_idle_open;
			}
			else if(CurrentSequence.Name == Seq_idle_open)
			{
				CurrentSequence.Name = Seq_throw_close;
				await Task.DelaySeconds(CurrentSequence.Duration);
				CurrentSequence.Name = Seq_idle_close;
			}		
		}

		static float[,] GetPlots(string Model, bool Fast)
		{
			return Model switch
			{
				"models/trakpak3/trakpak3_us/switchstands/racor_112e_right/racor_112e_right.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/racor_112e_left/racor_112e_left.vmdl" => new float[,] {
						{0,0.0f},
						{25,0.0f},
						{30,0.1f},
						{35,0.4f},
						{40,1.0f},
						{60,1.0f}
					},
				"models/trakpak3/trakpak3_us/switchstands/bethlehem_51a_right/bethlehem_51a_right.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/bethlehem_51a_left/bethlehem_51a_left.vmdl" => new float[,] {
						{0,0.0f},
						{15,0.0f},
						{50,0.6f},
						{65,0.0f},
						{73,0.2f},
						{90,0.0f},
						{100,1.0f}
					},
				"models/trakpak3/trakpak3_us/switchstands/racor_22_right/racor_22_right.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/racor_22_left/racor_22_left.vmdl" => new float[,] {
						{0,0.0f},
						{15,0.0f},
						{50,0.5f},
						{70,0.1f},
						{75,0.0f},
						{80,0.7f},
						{83,1.0f},
						{90,1.0f}
					},
				"models/trakpak3/trakpak3_us/switchstands/racor_22e_right/racor_22e_right.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/racor_22e_left/racor_22e_left.vmdl" => new float[,] {
						{0,0.0f},
						{15,0.0f},
						{60,0.6f},
						{80,0.1f},
						{85,0.0f},
						{90,0.5f},
						{95,1.0f},
						{120,1.0f}
					},
				"models/trakpak3/trakpak3_us/switchstands/grs_model5_lh_left/grs_model5_lh_left.vmdl" or //to do: add fast switch (is it even needed?)
				"models/trakpak3/trakpak3_us/switchstands/grs_model5_lh_right/grs_model5_lh_right.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/grs_model5_rh_left/grs_model5_rh_left.vmdl" or
				"models/trakpak3/trakpak3_us/switchstands/grs_model5_rh_right/grs_model5_rh_right.vmdl" => new float[,] {
						{0,0.0f},
						{90,0.0f},
						{180,1.0f},
						{270,1.0f}
					},
				"models/trakpak3/trakpak3_us/switchstands/armstrong/armstrong.vmdl" => new float[,] {
						{0,0.0f},
						{10,0.0f},
						{30,1.0f},
						{40,1.0f}
					},
				_ => new float[,] {
						{0,0.0f},
						{15,1.0f}
					},
			};
		}

		public async void AnimateSwitch(Tp3_switch SwitchEntity)
		{
			float[,] plots = GetPlots(this.GetModelName(),false);

			for (int i = 0; i < plots.GetLength(0); i++)
			{
				SwitchEntity.SwitchSetCycle(15*plots[i,1]/-(i > 0 ? plots[i-1,0]-plots[i,0] : plots[i,0]));
				await Task.DelaySeconds(-(i > 0 ? plots[i-1,0]-plots[i,0] : plots[i,0])/30);
			}
		}

		public bool IsUsable(Entity user)
		{
			return true;
		}
	}
}
