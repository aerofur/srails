// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/x.mdl"

$staticprop

$bodygroup "Body"
{
	studio "target.smd"
}
$bodygroup "Aspect"
{
	studio "x_dead.smd"
	studio "x_red.smd"
	studio "x_red_fl.smd"
	studio "x_lun.smd"
	studio "x_yel.smd"
	studio "x_yel_fl.smd"
	studio "x_grn.smd"
	studio "x_grn_fl.smd"
	studio "x_deader.smd"
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
