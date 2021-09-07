// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/tiestack_large_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tiestack_large_1_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition -1.5 3.5 12

$cdmaterials "models\trakpak3_common\tracks\ties\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_clean_noplates" }
	{ "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -104.25 -54.25 -16.25 96.25 52.25 40.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tiestack_large_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tiestack_large_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
