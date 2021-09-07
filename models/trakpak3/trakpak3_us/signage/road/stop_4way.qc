// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/road/stop_4way.mdl"

$staticprop

$bodygroup "Body"
{
	studio "signpost.smd"
}
$bodygroup "Sign"
{
	studio "stop_4way.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0.375 -36

$opaque

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\signage\"

$cbox 0 0 0 0 0 0

$bbox -1.25 -16.25 -88.25 0.25 16.25 16.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"stop_4way_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "stop_4way_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
