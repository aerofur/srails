using Sandbox;
using System;
using System.Text.Json.Serialization;

/// <summary>
/// Trakpak3 Switchstand Entity
/// </summary>
[Library("tp3_switch_lever_anim")]
[Hammer.Model]
[Hammer.RenderFields]
public partial class tp3_switch_lever_anim : AnimEntity, IUse
{
	private TimeSince timeSinceThrow;

	/// <summary>
	/// The default sequence to use when the switch is locked in its Main/Normal position.
	/// </summary>
	[Property("seq_idle_close", Title = "Idle Main/Normal Seq")]
	public string seq_idle_close {get; set;} = "idle_close";

	/// <summary>
	/// The sequence to use when the switch is locked in its Diverging/Reverse position.
	/// </summary>
	[Property("seq_idle_open", Title = "Idle Diverging/Reverse Seq")]
	public string seq_idle_open {get; set;} = "idle_open";

	/// <summary>
	/// The sequence to use when the switch is being thrown Diverging/Reverse.
	/// </summary>
	[Property("seq_throw_open", Title = "Throw Diverging/Reverse Seq")]
	public string seq_throw_open {get; set;} = "throw_open";

	/// <summary>
	/// The sequence to use when the switch is being thrown Main/Normal.
	/// </summary>
	[Property("seq_throw_close", Title = "Throw Main/Normal Seq")]
	public string seq_throw_close {get; set;} = "throw_close";

	public enum InitalPosition
	{
		Main,
		Diverging
	}

	/// <summary>
	/// The lever will throw itself to this position immediately when the map starts.
	/// </summary>
	[Property("targetstate", Title = "Initial Position")]
	public InitalPosition targetstate {get; set;} = InitalPosition.Main;

	/// <summary>
	/// The switch you are wanting to change/target (switch requires a name).
	/// </summary>
	[Property("targetswitch", Title = "Target Switch", FGDType = "target_destination")]
	public string targetswitch {get; set;}

	public override void Spawn()
	{
		base.Spawn();
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
		CurrentSequence.Name = targetstate == InitalPosition.Main ? seq_idle_close : seq_idle_open;
	}

	public bool OnUse(Entity user)
	{
		if(user is LocalPlayer player && timeSinceThrow > 1.0f)
		{
			Throw();
		}
		
		timeSinceThrow = 0;
		return true;
	}
	
	public async void Throw()
	{
		tp3_switch SwitchEntity = (tp3_switch)Entity.FindByName(targetswitch);

		if(CurrentSequence.Name == seq_idle_close)
		{
			CurrentSequence.Name = seq_throw_open;
			SwitchEntity.SwitchThrow(true);
			await Task.DelaySeconds(CurrentSequence.Duration);
			CurrentSequence.Name = seq_idle_open;
		}
		else if(CurrentSequence.Name == seq_idle_open)
		{
			CurrentSequence.Name = seq_throw_close;
			SwitchEntity.SwitchThrow(false);
			await Task.DelaySeconds(CurrentSequence.Duration);
			CurrentSequence.Name = seq_idle_close;
		}		
	}

	public bool IsUsable(Entity user)
	{
		return true;
	}
}