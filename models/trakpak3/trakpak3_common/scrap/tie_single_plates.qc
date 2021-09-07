// Created by Crowbar 0.68

$modelname "trakpak3_common/scrap/tie_single_plates.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tie_single_plates_ref.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0 0 0.5

$cdmaterials "models\trakpak3_common\tracks\ties\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -5.25 -51.25 -3.25 5.25 51.25 4.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tie_single_plates_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tie_single_plates_physics.smd"
{
	$mass 200
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
