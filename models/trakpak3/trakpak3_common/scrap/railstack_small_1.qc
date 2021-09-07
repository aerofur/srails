// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railstack_small_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railstack_small_1_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 1 2 -2

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\wood\"

$cbox 0 0 0 0 0 0

$bbox -236.25 -58 -16.25 232.25 60.25 12.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railstack_small_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railstack_small_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
