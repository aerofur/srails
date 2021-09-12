// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/xings/flangeway_wood_256.mdl"

$staticprop

$bodygroup "Body"
{
	studio "flangeway_wood_256_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0 0 -8

$cdmaterials "models\trakpak3_common\xings\"

$texturegroup "skinfamilies"
{
	{ "pad_wood"  "pad_wood_nobolts"  }
	{ "pad_wood2" "pad_wood2_nobolts" }
}

$cbox 0 0 0 0 0 0

$bbox -128.25 -42.25 -16.25 128.25 42.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"flangeway_wood_256_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "flangeway_wood_256_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
