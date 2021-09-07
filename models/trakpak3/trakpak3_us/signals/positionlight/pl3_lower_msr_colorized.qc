// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl3_lower_msr_colorized.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl3_lower_msr_ref.smd"
}
$bodygroup "Speed"
{
	studio "pl3_lower_msr_colorized_off.smd"
	studio "pl3_lower_msr_colorized_limited.smd"
	studio "pl3_lower_msr_colorized_medium.smd"
	studio "pl3_lower_msr_colorized_appr_medium.smd"
	studio "pl3_lower_msr_colorized_slow.smd"
	studio "pl3_lower_msr_colorized_restricting.smd"
	studio "pl3_lower_msr_colorized_single.smd"
}
$bodygroup "Target"
{
	studio "pl3_lower_msr_target_clipped.smd"
	studio "pl3_lower_msr_target_round.smd"
	studio "pl3_lower_msr_target_medium.smd"
	studio "pl3_lower_msr_target_slow.smd"
	studio "pl3_lower_msr_target_restricting.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -2.25 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -10 -28.25 -28.25 14.5 28.25 28.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl3_lower_msr_colorized_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl3_lower_msr_colorized_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
