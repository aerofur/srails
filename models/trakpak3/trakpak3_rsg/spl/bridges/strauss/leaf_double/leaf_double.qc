// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/strauss/leaf_double.mdl"

$bodygroup "Body"
{
	studio "leaf_double.smd"
}
$bodygroup "Hand Crank"
{
	studio "none.smd"
	studio "crank_double.smd"
}
$bodygroup "Linkage"
{
	studio "linkage_double.smd"
}
$bodygroup "Counterweight"
{
	studio "counterweight_double.smd"
}
$bodygroup "Rack"
{
	studio "rack_double.smd"
}
$bodygroup "Pinion"
{
	studio "pinion_double.smd"
}
$bodygroup "Gear 1"
{
	studio "gear1_double.smd"
}
$bodygroup "Gear 2"
{
	studio "gear2_double.smd"
}
$bodygroup "Gear 3"
{
	studio "gear3_double.smd"
}
$bodygroup "Gear 4"
{
	studio "gear4_double.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -416 418

$opaque

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$attachment "leaf2" "leaf" 96 24 8 rotate 0 90 0
$attachment "leaf1" "leaf" -96 24 8 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -1216 -252.001 -80.25 2048.25 252 916

$definebone "leaf" "" 0 24 -8 0 -179.999978 0 0 0 0 0 0 0
$definebone "gear4" "" 0 472 426 0 0 0 0 0 0 0 0 0
$definebone "linkage" "leaf" 0 400 328 0 -179.999978 0 0 0 0 0 0 0
$definebone "counterweight" "" 0 696 564 0 0 0 0 0 0 0 0 0
$definebone "rack" "leaf" 0 448 328 0 -179.999978 0 0 0 0 0 0 0
$definebone "pinion" "" 0 400 404 0 0 0 0 0 0 0 0 0
$definebone "gear1" "" 0 400 426 0 0 0 0 0 0 0 0 0
$definebone "gear2" "" 0 416 426 0 0 0 0 0 0 0 0 0
$definebone "gear3" "" 0 444 426 0 0 0 0 0 0 0 0 0


$sectionframes 30 480

$sequence "idle" {
	"leaf_double_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"leaf_double_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "leaf_double_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
