// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/dollpost/doll_bracket.mdl"

$staticprop

$bodygroup "Body"
{
	studio "doll_bracket_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -24 -12

$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -0.25 -4 -24.25 48.25 4 0.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"doll_bracket_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "doll_bracket_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
