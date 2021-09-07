// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/tri-light/ryl.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ryg.smd"
}
$bodygroup "Color"
{
	studio "ryl_dead.smd"
	studio "ryl_red.smd"
	studio "ryl_red_fl.smd"
	studio "ryl_lun.smd"
	studio "ryl_yel.smd"
	studio "ryl_yel_fl.smd"
	studio "ryl_dead_2.smd"
	studio "ryl_dead_3.smd"
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
	"ryl_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ryl_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
