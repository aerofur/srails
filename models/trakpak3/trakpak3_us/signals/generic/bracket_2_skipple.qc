// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/bracket_2_skipple.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bracket_2_skipple_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -3 -55.5

$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -4.25 -4.25 -115.25 9.5 4.25 4.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bracket_2_skipple_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bracket_2_skipple_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
