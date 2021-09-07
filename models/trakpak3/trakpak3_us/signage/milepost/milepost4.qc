// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/milepost/milepost4.mdl"

$staticprop

$bodygroup "Body"
{
	studio "milepost4_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 -32

$cdmaterials "models\trakpak3_common\metal\"

$attachment "text1" "static_prop" 6.5 0 -2 rotate -1.5 0 0
$attachment "text2" "static_prop" 0 6.5 -2 rotate -1.5 90 0
$attachment "text3" "static_prop" -6.5 0 -2 rotate -1.5 -180 0
$attachment "text4" "static_prop" 0 -6.5 -2 rotate -1.5 -90 0

$cbox 0 0 0 0 0 0

$bbox -8.25 -8.25 -72.25 8.25 8.25 8.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"milepost4_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "milepost4_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
