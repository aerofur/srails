// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/orbital_xox.mdl"

$staticprop

$bodygroup "Aspect"
{
	studio "xox_dead.smd"
	studio "xox_dead_2.smd"
	studio "xox_dead_3.smd"
	studio "xox_dead_4.smd"
	studio "xox_dead_5.smd"
	studio "xox_xox.smd"
	studio "xox_xfx.smd"
}
$bodygroup "Disable Bracket"
{
	studio "xox_mountingbracket.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 7.069 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.763 -9.5 -9.5 9.625 9.5 9.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"orbital_xox_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "orbital_xox_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
