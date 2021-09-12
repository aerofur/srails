// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/hpg/1536_wide.mdl"

$staticprop

$bodygroup "Body"
{
	studio "1536_wide_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 0 10

$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -768.25 -128.25 -56.25 768.25 128.25 76.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"1536_wide_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "1536_wide_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 20

}
