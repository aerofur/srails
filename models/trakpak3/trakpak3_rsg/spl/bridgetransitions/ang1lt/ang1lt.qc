// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridgetransitions/ang1lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ang1lt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -15.001 60.002 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     "ballast_brown_dirty"     "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_brown"     "ballast_brown_dirty"     "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -151.008 -154.004 -40.25 31.004 124.003 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ang1lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ang1lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
