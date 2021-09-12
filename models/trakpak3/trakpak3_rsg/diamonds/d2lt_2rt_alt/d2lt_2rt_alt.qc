// Created by Crowbar 0.68

$modelname "trakpak3_rsg/diamonds/d2lt_2rt_alt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "d2lt_2rt_alt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -0.001 0.002 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     "ballast_brown_dirty"     "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_brown"     "ballast_brown_dirty"     "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
}

$attachment "autopoint1" "static_prop" 160 80 0 rotate 0 90 0
$attachment "autopoint2" "static_prop" -160 -80 0 rotate 0 90 0
$attachment "frog1" "static_prop" 0 -31.5 -7 rotate 0 90 0
$attachment "frog2" "static_prop" -63 0 -7 rotate 0 90 0
$attachment "frog3" "static_prop" 0 31.5 -7 rotate 0 90 0
$attachment "frog4" "static_prop" 63 0 -7 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -185.004 -178 -40.25 185 177.998 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"d2lt_2rt_alt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "d2lt_2rt_alt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13

}
