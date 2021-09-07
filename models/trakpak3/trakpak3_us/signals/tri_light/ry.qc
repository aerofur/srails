// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/tri-light/ry.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ry.smd"
}
$bodygroup "Color"
{
	studio "ry_dead.smd"
	studio "ry_red.smd"
	studio "ry_red_fl.smd"
	studio "ry_dead_2.smd"
	studio "ry_yel.smd"
	studio "ry_yel_fl.smd"
	studio "ry_dead_3.smd"
	studio "ry_dead_4.smd"
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
	"ry_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ry_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
