// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl3_lower_single_colorized.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl3_lower_single_ref.smd"
}
$bodygroup "Speed"
{
	studio "pl3_lower_single_colorized_off.smd"
	studio "pl3_lower_single_colorized_off_2.smd"
	studio "pl3_lower_single_colorized_off_3.smd"
	studio "pl3_lower_single_colorized_off_4.smd"
	studio "pl3_lower_single_colorized_off_5.smd"
	studio "pl3_lower_single_colorized_single.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -2.25 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -10 -6.25 -6.25 14.5 6.25 6.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl3_lower_single_colorized_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl3_lower_single_colorized_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
