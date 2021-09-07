// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/domino.mdl"

$staticprop

$bodygroup "Body"
{
	studio "domino_ref.smd"
}
$bodygroup "Aspect"
{
	studio "domino_off.smd"
	studio "domino_stop.smd"
	studio "domino_stopandproceed.smd"
	studio "domino_restricting.smd"
	studio "domino_permissiveblock.smd"
	studio "domino_slowapproach.smd"
	studio "domino_approach.smd"
	studio "domino_mediumapproach.smd"
	studio "domino_mediumclear.smd"
	studio "domino_limitedclear.smd"
	studio "domino_clear.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -4.75 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -5.25 -28.25 -28.25 14.5 28.25 28.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"domino_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "domino_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
