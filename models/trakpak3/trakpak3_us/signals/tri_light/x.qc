// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/tri-light/x.mdl"

$staticprop

$bodygroup "Body"
{
	studio "r.smd"
}
$bodygroup "Color"
{
	studio "x_dead.smd"
	studio "x_red.smd"
	studio "x_red_fl.smd"
	studio "x_lun.smd"
	studio "x_yel.smd"
	studio "x_yel_fl.smd"
	studio "x_grn.smd"
	studio "x_grn_fl.smd"
}
$bodygroup "Disable Target"
{
	studio "target.smd"
	studio "none.smd"
}
$bodygroup "Backing Selector"
{
	studio "trilight common.smd"
	studio "trilight uss early.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -3.5 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -6.5 -20.25 -20.25 13.5 20.25 20.25

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
