// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorlight/x.mdl"

$staticprop

$bodygroup "Body"
{
	studio "x_ref.smd"
}
$bodygroup "Color"
{
	studio "x_off.smd"
	studio "x_red.smd"
	studio "x_red_fl.smd"
	studio "x_lun.smd"
	studio "x_yel.smd"
	studio "x_yel_fl.smd"
	studio "x_grn.smd"
	studio "x_grn_fl.smd"
}
$bodygroup "Target/Baffles"
{
	studio "x_body_standard.smd"
	studio "x_body_vader.smd"
	studio "x_body_tunnel.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -8.5 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -3.25 -10.25 -10.25 20 10.25 10.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"x_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "x_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
