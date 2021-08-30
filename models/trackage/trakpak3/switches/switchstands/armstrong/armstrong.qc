// Created by Crowbar 0.68

$modelname "trakpak3_us/switchstands/armstrong.mdl"

$bodygroup "Body"
{
	studio "base.smd"
}
$bodygroup "Label Digit 1"
{
	studio "d1_0.smd"
	studio "d1_1.smd"
	studio "d1_2.smd"
	studio "d1_3.smd"
	studio "d1_4.smd"
	studio "d1_5.smd"
	studio "d1_6.smd"
	studio "d1_7.smd"
	studio "d1_8.smd"
	studio "d1_9.smd"
	studio "none.smd"
}
$bodygroup "Label Digit 2"
{
	studio "d2_0.smd"
	studio "d2_1.smd"
	studio "d2_2.smd"
	studio "d2_3.smd"
	studio "d2_4.smd"
	studio "d2_5.smd"
	studio "d2_6.smd"
	studio "d2_7.smd"
	studio "d2_8.smd"
	studio "d2_9.smd"
	studio "none_2.smd"
}
$bodygroup "Lever"
{
	studio "lever.smd"
}
$bodygroup "Latch"
{
	studio "latch.smd"
}
$bodygroup "Rod"
{
	studio "rod.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 5.627 24.594

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white"  "bridgemetal1_black" }
	{ "bridgemetal1_red"    "bridgemetal1_black" }
	{ "bridgemetal1_russet" "bridgemetal1_black" }
	{ "bridgemetal1_yellow" "bridgemetal1_black" }
	{ "bridgemetal1_green"  "bridgemetal1_black" }
	{ "bridgemetal1_blue"   "bridgemetal1_black" }
	{ "bridgemetal1_black"  "bridgemetal1_white" }
}

$cbox 0 0 0 0 0 0

$bbox -25.254 -4.25 -2.265 14.25 4.25 54.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "lever" "" 0 -5.5 4 0 -179.999978 0 0 0 0 0 0 0
$definebone "latch" "lever" 0 0 33 0 -179.999978 0 0 0 0 0 0 0
$definebone "rod" "latch" 0 2 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"armstrong_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_close" {
	"armstrong_anims\idle_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"armstrong_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open" {
	"armstrong_anims\throw_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close" {
	"armstrong_anims\throw_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "armstrong_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
