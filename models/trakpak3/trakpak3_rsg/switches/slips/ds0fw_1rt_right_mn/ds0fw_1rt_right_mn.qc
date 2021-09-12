// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/slips/ds0fw_1rt_right_mn.mdl"

$bodygroup "Body"
{
	studio "ds0fw_1rt_right_ref.smd"
}
$bodygroup "blades"
{
	studio "ds0fw_1rt_right_blades.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -40.508 -192 -20

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

$attachment "frog1" "static_prop" -28 -231 -7 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -31 -220.001 -40.25 415 138.985 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "blades" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ds0fw_1rt_right_mn_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"ds0fw_1rt_right_mn_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 2
}

$collisionmodel "ds0fw_1rt_right_mn_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 16

}
