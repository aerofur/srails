// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railstack_large_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railstack_large_1_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -2 11

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\wood\"

$cbox 0 0 0 0 0 0

$bbox -234.25 -64.25 -16.25 238.25 64.25 38.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railstack_large_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railstack_large_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
