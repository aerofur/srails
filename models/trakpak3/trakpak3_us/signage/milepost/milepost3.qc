// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/milepost/milepost3.mdl"

$staticprop

$bodygroup "Body"
{
	studio "milepost3_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 -26

$cdmaterials "models\trakpak3_common\metal\"

$attachment "text1" "static_prop" 0.75 0 0 rotate 0 0 0
$attachment "text2" "static_prop" -0.75 0 0 rotate 0 -180 0

$cbox 0 0 0 0 0 0

$bbox -0.75 -4 -65.25 0.75 4 13.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"milepost3_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "milepost3_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
