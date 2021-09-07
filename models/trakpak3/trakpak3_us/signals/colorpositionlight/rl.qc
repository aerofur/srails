// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorpositionlight/rl.mdl"

$staticprop

$bodygroup "Body"
{
	studio "target.smd"
}
$bodygroup "Aspect"
{
	studio "rl_dead.smd"
	studio "rl_red.smd"
	studio "rl_red_fl.smd"
	studio "rl_lun.smd"
	studio "rl_dead_2.smd"
	studio "rl_dead_3.smd"
	studio "rl_dead_4.smd"
	studio "rl_dead_5.smd"
}
$bodygroup "Disable Bracket"
{
	studio "mountingbracket_main.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 7.068 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -23.762 -20.25 -20.25 9.626 20.25 20.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"rl_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rl_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
