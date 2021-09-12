// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/turntables/transfer_1536_modern.mdl"

$staticprop

$bodygroup "Body"
{
	studio "transfer_1536_modern_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -11 0 41

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\misc\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\glass\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal1_black" }
	{ "target_yellow"      }
	{ "bridgemetal2_white" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -768.25 -138.25 -32 768.25 116 114

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"transfer_1536_modern_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "transfer_1536_modern_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 21

}
