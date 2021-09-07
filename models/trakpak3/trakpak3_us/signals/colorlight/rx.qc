// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorlight/rx.mdl"

$staticprop

$bodygroup "Body"
{
	studio "rx_ref.smd"
}
$bodygroup "Color"
{
	studio "rx_off.smd"
	studio "rx_red.smd"
	studio "rx_red_fl.smd"
	studio "rx_lun.smd"
	studio "rx_yel.smd"
	studio "rx_yel_fl.smd"
	studio "rx_grn.smd"
	studio "rx_grn_fl.smd"
}
$bodygroup "Target/Baffles"
{
	studio "rx_body_standard.smd"
	studio "rx_body_vader.smd"
	studio "rx_body_tunnel.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -8.5 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -3.25 -10.25 -15.25 20 10.25 15.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"rx_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rx_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
