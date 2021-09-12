// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/pennsy/4096_double.mdl"

$staticprop

$bodygroup "Body"
{
	studio "4096_double_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 312

$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -2048.25 -224.25 -80.25 2048.25 224.25 704.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"4096_double_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "4096_double_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 10

}
