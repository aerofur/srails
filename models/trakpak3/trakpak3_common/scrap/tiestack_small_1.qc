// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/tiestack_small_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tiestack_small_1_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0.5 1.5 2.5

$cdmaterials "models\trakpak3_common\tracks\ties\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_clean_noplates" }
	{ "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -60.25 -54.25 -17 56.25 54.25 22.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tiestack_small_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tiestack_small_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
