// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/orbital_oox.mdl"

$staticprop

$bodygroup "Aspect"
{
	studio "oox_dead.smd"
	studio "oox_dead_2.smd"
	studio "oox_dead_3.smd"
	studio "oox_oxx.smd"
	studio "oox_fxx.smd"
	studio "oox_xox.smd"
	studio "oox_xfx.smd"
}
$bodygroup "Disable Bracket"
{
	studio "oox_mountingbracket.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition -20 7.069 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.763 -49.5 -9.5 9.625 9.5 9.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"orbital_oox_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "orbital_oox_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
