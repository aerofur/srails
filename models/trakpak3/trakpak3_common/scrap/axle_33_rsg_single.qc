// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/axle_33_rsg_single.mdl"

$staticprop

$bodygroup "Body"
{
	studio "axle_33_rsg_single_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 8.5

$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -18.001 -43.25 -9.5 18.001 43.25 26.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"axle_33_rsg_single_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "axle_33_rsg_single_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
