// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorlight/ryg.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ryg_ref.smd"
}
$bodygroup "Color"
{
	studio "ryg_off.smd"
	studio "ryg_red.smd"
	studio "ryg_red_fl.smd"
	studio "ryg_off_2.smd"
	studio "ryg_yel.smd"
	studio "ryg_yel_fl.smd"
	studio "ryg_grn.smd"
	studio "ryg_grn_fl.smd"
}
$bodygroup "Target/Baffles"
{
	studio "ryg_body_standard.smd"
	studio "ryg_body_vader.smd"
	studio "ryg_body_tunnel.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -8.5 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -3.25 -10.25 -20.25 20 10.25 20.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ryg_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ryg_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
