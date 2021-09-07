// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/orbital_ooo.mdl"

$staticprop

$bodygroup "Aspect"
{
	studio "ooo_dead.smd"
	studio "ooo_xxo.smd"
	studio "ooo_xxf.smd"
	studio "ooo_oxx.smd"
	studio "ooo_fxx.smd"
	studio "ooo_xox.smd"
	studio "ooo_xfx.smd"
}
$bodygroup "Disable Bracket"
{
	studio "ooo_mountingbracket.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 7.069 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.762 -49.5 -9.5 9.625 49.5 9.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"orbital_ooo_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "orbital_ooo_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
