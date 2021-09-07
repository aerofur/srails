// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl5_full_redeye.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl5_full_ref.smd"
}
$bodygroup "Aspect"
{
	studio "pl5_full_off_r.smd"
	studio "pl5_full_stop_r.smd"
	studio "pl5_full_stopandproceed_r.smd"
	studio "pl5_full_restricting_r.smd"
	studio "pl5_full_permissiveblock_r.smd"
	studio "pl5_full_slowapproach_r.smd"
	studio "pl5_full_slowclear_r.smd"
	studio "pl5_full_caution_r.smd"
	studio "pl5_full_approach_r.smd"
	studio "pl5_full_approachslow_r.smd"
	studio "pl5_full_mediumapproach_r.smd"
	studio "pl5_full_mediumclear_r.smd"
	studio "pl5_full_approachmedium_r.smd"
	studio "pl5_full_limitedclear_r.smd"
	studio "pl5_full_approachlimited_r.smd"
	studio "pl5_full_clear_r.smd"
	studio "pl5_full_clearblock_r.smd"
}
$bodygroup "Square Housing"
{
	studio "pl5_housing_slanted.smd"
	studio "pl5_housing_square.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -0.5 33.375

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "wht_on" "wht_off" "wht_fl_c" }
	{ "lun_on" "lun_off" "lun_fl_c" }
}

$cbox 0 0 0 0 0 0

$bbox -7.501 -8.75 -16.25 8.501 8.75 83.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl5_full_redeye_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl5_full_redeye_physics.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
