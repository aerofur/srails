// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/searchlight/searchlight.mdl"

$staticprop

$bodygroup "Body"
{
	studio "searchlight_ref.smd"
}
$bodygroup "Color"
{
	studio "sl_off.smd"
	studio "sl_red.smd"
	studio "sl_red_fl.smd"
	studio "sl_lun.smd"
	studio "sl_yel.smd"
	studio "sl_yel_fl.smd"
	studio "sl_grn.smd"
	studio "sl_grn_fl.smd"
}
$bodygroup "Target"
{
	studio "sl_target_34.smd"
	studio "sl_target_24.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -12 0

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\generic\"

$cbox 0 0 0 0 0 0

$bbox -4.25 -17 -17 28 17 17

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"searchlight_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "searchlight_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
