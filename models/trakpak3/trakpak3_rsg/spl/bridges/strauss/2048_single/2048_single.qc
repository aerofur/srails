// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridges/strauss/2048_single.mdl"

$bodygroup "Body"
{
	studio "base_single.smd"
}
$bodygroup "Leaf"
{
	studio "leaf_single.smd"
}
$bodygroup "Counterweight"
{
	studio "counterweight_single.smd"
}
$bodygroup "Linkage"
{
	studio "linkage_single.smd"
}
$bodygroup "Pinion"
{
	studio "pinion_single.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0 -416 418

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -1216 -176.25 -80.25 2048 176.25 916

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "leaf" "" 0 24 -8 0 -179.999978 0 0 0 0 0 0 0
$definebone "counterweight" "" 0 696 564 0 -179.999978 0 0 0 0 0 0 0
$definebone "linkage" "leaf" 0 400 328 0 0 0 0 0 0 0 0 0
$definebone "pinion" "leaf" 0 448 328 0 0 0 0 0 0 0 0 0


$sectionframes 30 120

$sequence "idle" {
	"2048_single_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "raise_60" {
	"2048_single_anims\raise_60.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "2048_single_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
