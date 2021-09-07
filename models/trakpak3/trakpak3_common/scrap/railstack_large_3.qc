// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railstack_large_3.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railstack_large_3_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -2 -2 16.5

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\wood\"

$cbox 0 0 0 0 0 0

$bbox -238.25 -70 -8.25 242.25 68.25 42.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railstack_large_3_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railstack_large_3_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
