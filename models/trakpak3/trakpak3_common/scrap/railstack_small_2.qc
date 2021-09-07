// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railstack_small_2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railstack_small_2_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -2.5 2 0

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\wood\"

$cbox 0 0 0 0 0 0

$bbox -128.25 -54.25 -16.25 124.25 50.25 16.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railstack_small_2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railstack_small_2_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
