// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/strauss/base_double.mdl"

$staticprop

$bodygroup "Body"
{
	studio "base_double.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 384 254

$opaque

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\glass\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -768.25 -272 -80.25 0.25 272 592.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"base_double_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "base_double_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 18

}
