// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/doublejunctions/r3072/outer_right_mn.mdl"

$bodygroup "Body"
{
	studio "outer_right_mn_ref.smd"
}
$bodygroup "Blades"
{
	studio "outer_right_blades_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 493 1257 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown_dirty"     "ballast_brown"     "singletie_wood_dirty_noplates" "singletie_wood_dirty_plates" }
	{ "ballast_brown"           "ballast_brown"     "singletie_wood_clean_noplates" "singletie_wood_clean_plates" }
	{ "ballast_brown_dirty"     "ballast_brown"     "singletie_conc_dirty_noplates" "singletie_conc_dirty_plates" }
	{ "ballast_brown"           "ballast_brown"     "singletie_conc_clean_noplates" "singletie_conc_clean_plates" }
	{ "ballast_gray_dirty"      "ballast_gray"      "singletie_wood_dirty_noplates" "singletie_wood_dirty_plates" }
	{ "ballast_gray"            "ballast_gray"      "singletie_wood_clean_noplates" "singletie_wood_clean_plates" }
	{ "ballast_gray_dirty"      "ballast_gray"      "singletie_conc_dirty_noplates" "singletie_conc_dirty_plates" }
	{ "ballast_gray"            "ballast_gray"      "singletie_conc_clean_noplates" "singletie_conc_clean_plates" }
	{ "ballast_tan_dirty"       "ballast_tan"       "singletie_wood_dirty_noplates" "singletie_wood_dirty_plates" }
	{ "ballast_tan"             "ballast_tan"       "singletie_wood_clean_noplates" "singletie_wood_clean_plates" }
	{ "ballast_tan_dirty"       "ballast_tan"       "singletie_conc_dirty_noplates" "singletie_conc_dirty_plates" }
	{ "ballast_tan"             "ballast_tan"       "singletie_conc_clean_noplates" "singletie_conc_clean_plates" }
	{ "ballast_limestone_dirty" "ballast_limestone" "singletie_wood_dirty_noplates" "singletie_wood_dirty_plates" }
	{ "ballast_limestone"       "ballast_limestone" "singletie_wood_clean_noplates" "singletie_wood_clean_plates" }
	{ "ballast_limestone_dirty" "ballast_limestone" "singletie_conc_dirty_noplates" "singletie_conc_dirty_plates" }
	{ "ballast_limestone"       "ballast_limestone" "singletie_conc_clean_noplates" "singletie_conc_clean_plates" }
}

$attachment "autopoint1" "static_prop" 352 1536 0 rotate 0 -180 0
$attachment "frog1" "static_prop" 28 666 -7 rotate 0 -180 0
$attachment "bladecenter1" "static_prop" 0 56 -7 rotate 0 -180 0

$cbox 0 0 0 0 0 0

$bbox -2522 -128 -40.25 8 1114 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "blades" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"outer_right_mn_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"outer_right_mn_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 2
}

$collisionmodel "outer_right_mn_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 39

}
