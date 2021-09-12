// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/xings/pad_concrete_256.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pad_concrete_256_ref.smd"
}


$surfaceprop "concrete"

$contents "solid"

$illumposition 0 0 -8

$cdmaterials "models\trakpak3_common\xings\"

$cbox 0 0 0 0 0 0

$bbox -128.25 -50.25 -16.25 128.25 50.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pad_concrete_256_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pad_concrete_256_physics.smd"
{
	$mass 10000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
