// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/rolling/bascule_rolling_single_leaf.mdl"

$bodygroup "Body"
{
	studio "bascule_rolling_single_leaf.smd"
}
$bodygroup "Crank"
{
	studio "none.smd"
	studio "crank_left_single.smd"
	studio "crank_right_single.smd"
}
$bodygroup "Gear 1"
{
	studio "gear1_single.smd"
}
$bodygroup "Gear 2"
{
	studio "gear2_single.smd"
}
$bodygroup "Gear 3"
{
	studio "gear3_single.smd"
}
$bodygroup "Pinion"
{
	studio "pinion_single.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 908 200

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$attachment "leaf1" "leaf" 0 16 -240 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -1536.25 -120 -48.25 -279.75 120 448.25

$definebone "leaf" "" 0 496 240 0 0 0 0 0 0 0 0 0
$definebone "gear1" "leaf" 0 12 28 0 0 0 0 0 0 0 0 0
$definebone "gear2" "leaf" 0 28 28 0 0 0 0 0 0 0 0 0
$definebone "gear3" "leaf" 0 0 28 0 0 0 0 0 0 0 0 0
$definebone "pinion" "leaf" 0 0 0 0 0 0 0 0 0 0 0 0


$sectionframes 30 480

$sequence "idle" {
	"bascule_rolling_single_leaf_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"bascule_rolling_single_leaf_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bascule_rolling_single_leaf_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 7

}
