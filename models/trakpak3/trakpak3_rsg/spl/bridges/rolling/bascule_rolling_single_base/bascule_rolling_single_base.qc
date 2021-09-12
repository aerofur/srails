// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/rolling/bascule_rolling_single_base.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bascule_rolling_single_base.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 0 93.001

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -512.25 -128.25 -48.25 512.25 128.25 234.006

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bascule_rolling_single_base_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bascule_rolling_single_base_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
