// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/teardrop_full.mdl"

$staticprop

$bodygroup "Body"
{
	studio "teardrop_full_ref.smd"
}
$bodygroup "Aspect"
{
	studio "teardrop_full_off.smd"
	studio "teardrop_full_stop.smd"
	studio "teardrop_full_stopandproceed.smd"
	studio "teardrop_full_restricting.smd"
	studio "teardrop_full_permissiveblock.smd"
	studio "teardrop_full_slowapproach.smd"
	studio "teardrop_full_off_2.smd"
	studio "teardrop_full_caution.smd"
	studio "teardrop_full_approach.smd"
	studio "teardrop_full_approachslow.smd"
	studio "teardrop_full_mediumapproach.smd"
	studio "teardrop_full_mediumclear.smd"
	studio "teardrop_full_approachmedium.smd"
	studio "teardrop_full_limitedclear.smd"
	studio "teardrop_full_approachlimited.smd"
	studio "teardrop_full_clear.smd"
	studio "teardrop_full_clearblock.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -5.25 -7

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -6.25 -29 -43 16.5 29 29

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"teardrop_full_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "teardrop_full_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
