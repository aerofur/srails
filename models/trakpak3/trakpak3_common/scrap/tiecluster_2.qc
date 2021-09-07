// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/tiecluster_2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tiecluster_2_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition -0.5 1 -8.5

$cdmaterials "models\trakpak3_common\tracks\ties\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_clean_noplates" }
	{ "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -19 -53 -17 17 52.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tiecluster_2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tiecluster_2_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
