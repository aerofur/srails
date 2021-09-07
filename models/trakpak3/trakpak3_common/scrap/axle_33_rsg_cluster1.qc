// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/axle_33_rsg_cluster1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "axle_33_rsg_cluster1_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 8.5

$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -93.5 -47.25 -9.501 93.5 47.25 26.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"axle_33_rsg_cluster1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "axle_33_rsg_cluster1_physics.smd"
{
	$mass 2000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
