using Sandbox;
using System;
using System.Text.Json.Serialization;

/// <summary>
/// Trakpak3 Switch Entity
/// </summary>
[Library("tp3_switch")]
[Hammer.Model]
[Hammer.RenderFields]
public partial class tp3_switch : AnimEntity
{
    /// <summary>
	/// The sequence to use when the switch is in its normal position (idle).
	/// </summary>
	[Property("seq_idle", Title = "Idle Seq")]
	public string seq_idle {get; set;} = "idle";

	/// <summary>
	/// The sequence to use when the switch is being thrown Diverging/Reverse.
	/// </summary>
	[Property("seq_throw", Title = "Throw Seq")]
	public string seq_throw {get; set;} = "throw";

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
	/// The model to use when the switch is in Main/Normal position.
	/// </summary>
    [Property("track_mn", Title = "Model MN", FGDType = "studio")]
    public string track_mn {get; set;} = "";

	/// <summary>
	/// The model to use when the switch is in Diverging/Reverse position.
	/// </summary>
    [Property("track_dv", Title = "Model DV", FGDType = "studio")]
    public string track_dv {get; set;} = "";

	public override void Spawn()
	{
		base.Spawn();
		SetModel(targetstate == InitalPosition.Main ? track_mn : track_dv);
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
        CurrentSequence.Name = seq_idle;
	}

    public async void SwitchThrow(bool Diverging)
    {
        if(Diverging)
        {
			//await Task.DelaySeconds(1);
            CurrentSequence.Name = seq_throw;
            await Task.DelaySeconds(CurrentSequence.Duration/this.PlaybackRate);
            SetModel(track_dv);
            CurrentSequence.Name = seq_idle;
        }
        else
        {
			//await Task.DelaySeconds(1);
            CurrentSequence.Name = seq_throw;
            await Task.DelaySeconds(CurrentSequence.Duration/this.PlaybackRate);
            SetModel(track_mn);
            CurrentSequence.Name = seq_idle;
        }
    }

	public void SwitchSetCycle(float cycle)
	{
		this.PlaybackRate = cycle;
	}

	public void SwitchSetTarget(bool Diverging){
		//SetModel(Diverging == true ? track_dv : track_mn);
		Log.Trace("yrp i ran cool baby YESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
	}
}