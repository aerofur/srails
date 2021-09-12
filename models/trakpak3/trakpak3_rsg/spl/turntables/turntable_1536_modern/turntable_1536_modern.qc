// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/turntables/turntable_1536_modern.mdl"

$staticprop

$bodygroup "Body"
{
	studio "turntable_1536_modern_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -24 0 4.5

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\misc\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\glass\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_white" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -798.25 -200 -95.25 798.25 152 98.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"turntable_1536_modern_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "turntable_1536_modern_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 28

}
