// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorlight/rygl.mdl"

$staticprop

$bodygroup "Body"
{
	studio "rygl_ref.smd"
}
$bodygroup "Color"
{
	studio "rygl_off.smd"
	studio "rygl_red.smd"
	studio "rygl_red_fl.smd"
	studio "rygl_lun.smd"
	studio "rygl_yel.smd"
	studio "rygl_yel_fl.smd"
	studio "rygl_grn.smd"
	studio "rygl_grn_fl.smd"
}
$bodygroup "Target/Baffles"
{
	studio "rygl_body_standard.smd"
	studio "rygl_body_vader.smd"
	studio "rygl_body_tunnel.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -8.5 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -3.25 -10.25 -25.25 20 10.25 25.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"rygl_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rygl_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
