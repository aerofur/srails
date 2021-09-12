// Created by Crowbar 0.68

$modelname "trakpak3_rsg/diamonds/d0fw_1lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "d0fw_1lt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.004 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown_dirty"     "ballast_brown"     "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_brown"           "ballast_brown"     "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_brown_dirty"     "ballast_brown"     "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_brown"           "ballast_brown"     "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_gray_dirty"      "ballast_gray"      "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_gray"            "ballast_gray"      "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_gray_dirty"      "ballast_gray"      "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_gray"            "ballast_gray"      "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_tan_dirty"       "ballast_tan"       "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_tan"             "ballast_tan"       "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_tan_dirty"       "ballast_tan"       "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_tan"             "ballast_tan"       "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_limestone_dirty" "ballast_limestone" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_limestone"       "ballast_limestone" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_limestone_dirty" "ballast_limestone" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_limestone"       "ballast_limestone" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
}

$attachment "autopoint1" "static_prop" 416 104 0 rotate 0 90 0
$attachment "autopoint2" "static_prop" -416 -104 0 rotate 0 90 0
$attachment "frog1" "static_prop" 7 -27 -7 rotate 0 90 0
$attachment "frog2" "static_prop" -223 -27 -7 rotate 0 90 0
$attachment "frog3" "static_prop" -7 27 -7 rotate 0 90 0
$attachment "frog4" "static_prop" 223 27 -7 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -415.004 -220 -40.25 414.996 220 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"d0fw_1lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "d0fw_1lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13

}
