// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/dpg/1024_double.mdl"

$staticprop

$bodygroup "Body"
{
	studio "1024_double_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 0 -56

$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -512.25 -144.25 -112.25 512.25 144.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"1024_double_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "1024_double_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
