// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/rlyg.mdl"

$staticprop

$bodygroup "Body"
{
	studio "target.smd"
}
$bodygroup "Aspect"
{
	studio "rlyg_dead.smd"
	studio "rlyg_red.smd"
	studio "rlyg_red_fl.smd"
	studio "rlyg_lun.smd"
	studio "rlyg_yel.smd"
	studio "rlyg_yel_fl.smd"
	studio "rlyg_grn.smd"
	studio "rlyg_grn_fl.smd"
}
$bodygroup "Disable Bracket"
{
	studio "mountingbracket_main.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 7.069 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.762 -20.25 -20.25 9.625 20.25 20.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"rlyg_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rlyg_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
