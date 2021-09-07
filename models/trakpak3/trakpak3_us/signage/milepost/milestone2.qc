// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/milepost/milestone2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "milestone2_ref.smd"
}


$surfaceprop "concrete"

$contents "solid"

$illumposition 0 0 -32.25

$cdmaterials "models\trakpak3_common\concrete\"

$attachment "text1" "static_prop" 1.75 0 0 rotate 0 0 0
$attachment "text2" "static_prop" -1.75 0 0 rotate 0 -180 0

$cbox 0 0 0 0 0 0

$bbox -1.75 -8.25 -72.25 1.75 8.25 7.75

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"milestone2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "milestone2_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
