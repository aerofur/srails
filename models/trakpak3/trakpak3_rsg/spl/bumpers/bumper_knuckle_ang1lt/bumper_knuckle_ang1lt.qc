// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/bumper_knuckle_ang1lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bumper_knuckle_ang1lt_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition -0.003 0.605 7.5

$opaque

$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "target_red"         }
	{ "target_yellow"      }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -55.25 -44.872 -17.001 53.602 44.865 34.252

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bumper_knuckle_ang1lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bumper_knuckle_ang1lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
