// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/milepost/milepost2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "milepost2_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition -8.75 0 -26

$cdmaterials "models\trakpak3_common\metal\"

$attachment "text1" "static_prop" 1.5 -8.5 6 rotate 0 -2.9 0
$attachment "text2" "static_prop" -1.5 -8.5 6 rotate 0 -177.1 0

$cbox 0 0 0 0 0 0

$bbox -1.75 -19 -65.25 1.75 1.75 13.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"milepost2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "milepost2_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
