// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl3_rygl_redeye.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl3_rygl_ref.smd"
}
$bodygroup "Color"
{
	studio "pl3_rygl_off_r.smd"
	studio "pl3_rygl_red_r.smd"
	studio "pl3_rygl_lun_r.smd"
	studio "pl3_rygl_yel_r.smd"
	studio "pl3_rygl_yel_fl_r.smd"
	studio "pl3_rygl_grn_r.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -4.75 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -6.25 -28.25 -28.25 14.5 28.25 28.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl3_rygl_redeye_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl3_rygl_redeye_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
