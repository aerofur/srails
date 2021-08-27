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
		SetupPhysicsFromModel(PhysicsMotionType.Dynamic,false);
        CurrentSequence.Name = seq_idle;
	}

    public async void SwitchThrow(bool Diverging)
    {
        if(Diverging)
        {
            CurrentSequence.Name = seq_throw;
            await Task.DelaySeconds(CurrentSequence.Duration);
            SetModel(track_dv);
            CurrentSequence.Name = seq_idle;
        }
        else
        {
            CurrentSequence.Name = seq_throw;
            await Task.DelaySeconds(CurrentSequence.Duration);
            SetModel(track_mn);
            CurrentSequence.Name = seq_idle;
        }
    }
}