// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/milepost/milepost1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "milepost1_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition -3.5 0.125 -26

$cdmaterials "models\trakpak3_common\metal\"

$attachment "text1" "static_prop" 0.5 -4.5 0 rotate 0 0 0
$attachment "text2" "static_prop" -0.25 -4.5 0 rotate 0 -180 0

$cbox 0 0 0 0 0 0

$bbox -0.75 -8 -65.25 0.75 1 13.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"milepost1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "milepost1_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
