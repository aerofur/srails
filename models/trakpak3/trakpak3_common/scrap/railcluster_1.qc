// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railcluster_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railcluster_1_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 -8

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -238.25 -18.25 -16.25 238 18.25 0.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railcluster_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railcluster_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
