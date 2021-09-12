// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/pratt/deck_2048_single.mdl"

$staticprop

$bodygroup "Body"
{
	studio "deck_2048_single_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 0 -215

$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -1024.25 -128.25 -432.25 1024.25 128.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"deck_2048_single_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "deck_2048_single_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
