// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railcluster_2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railcluster_2_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 3.5 -6 -9

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -272.25 -24.25 -18 284.25 28 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railcluster_2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railcluster_2_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
