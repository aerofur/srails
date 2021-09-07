// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/tiecluster_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tiecluster_1_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition -0.5 -0.5 -8

$cdmaterials "models\trakpak3_common\tracks\ties\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_clean_noplates" }
	{ "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -21 -97 -16.25 22 96.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tiecluster_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tiecluster_1_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
