// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/orbital_xoo.mdl"

$staticprop

$bodygroup "Aspect"
{
	studio "xoo_dead.smd"
	studio "xoo_xxo.smd"
	studio "xoo_xxf.smd"
	studio "xoo_dead_2.smd"
	studio "xoo_dead_3.smd"
	studio "xoo_xox.smd"
	studio "xoo_xfx.smd"
}
$bodygroup "Disable Bracket"
{
	studio "xoo_mountingbracket.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 20 7.069 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.763 -9.5 -9.5 9.625 49.5 9.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"orbital_xoo_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "orbital_xoo_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
