// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bridgetransitions/ang2rt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ang2rt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 29.997 59.996 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     "ballast_brown_dirty"     "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" }
	{ "ballast_brown"     "ballast_brown_dirty"     "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" }
	{ "ballast_brown"     "ballast_brown"           "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" }
	{ "ballast_gray"      "ballast_gray_dirty"      "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" }
	{ "ballast_gray"      "ballast_gray"            "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" }
	{ "ballast_tan"       "ballast_tan_dirty"       "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" }
	{ "ballast_tan"       "ballast_tan"             "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "singlebridgetie_wood_dirty_plates" "singlebridgetie_wood_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singlebridgetie_wood_clean_plates" "singlebridgetie_wood_clean_noplates" }
	{ "ballast_limestone" "ballast_limestone_dirty" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "singlebridgetie_conc_dirty_plates" "singlebridgetie_conc_dirty_noplates" }
	{ "ballast_limestone" "ballast_limestone"       "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singlebridgetie_conc_clean_plates" "singlebridgetie_conc_clean_noplates" }
}

$cbox 0 0 0 0 0 0

$bbox -177 -114.006 -40.25 57.008 174 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ang2rt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ang2rt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
