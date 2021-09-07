// Created by Crowbar 0.68

$modelname "trakpak3_common/roads/guardrails/gr_end_l.mdl"

$staticprop

$bodygroup "Body"
{
	studio "gr_end_l_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 4 -10 0

$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -44.25 -2.25 -20.25 64.25 10.25 20.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"gr_end_l_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "gr_end_l_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
