// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/railcluster_3.mdl"

$staticprop

$bodygroup "Body"
{
	studio "railcluster_3_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -1 0.5 -8.5

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -154.25 -22 -17 154.25 20.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"railcluster_3_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "railcluster_3_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
