// Created by Crowbar 0.68

$modelname "trakpak3_us/switchstands/grs_model5_rh_right.mdl"

$bodygroup "Chevron"
{
	studio "chevron_right.smd"
}
$bodygroup "Model 5"
{
	studio "5a.smd"
	studio "5b_rh.smd"
	studio "5c.smd"
	studio "5d_rh.smd"
	studio "5e.smd"
	studio "5f_rh.smd"
	studio "5g.smd"
	studio "5h_rh.smd"
}
$bodygroup "Rod Covers"
{
	studio "none.smd"
	studio "rod_covers_aceg.smd"
	studio "rod_covers_bdfh.smd"
}
$bodygroup "Switch Position Indicator"
{
	studio "none_2.smd"
	studio "spi_rh_off.smd"
	studio "spi_rh_mn.smd"
	studio "spi_rh_dv.smd"
}
$bodygroup "Ridiculous Ties"
{
	studio "ties_wood_rh.smd"
	studio "ties_conc_rh.smd"
	studio "none_3.smd"
}
$bodygroup "Rod"
{
	studio "rod_rh.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 35.75 2.25 2.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\concrete\"
$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_us\switchstands\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "bridgemetal1_white" }
	{ "bridgemetal2_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -51 -40.5 -7 46.5 112 12

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "rod_rh" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0


$sectionframes 30 180

$sequence "idle" {
	"grs_model5_rh_right_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_close" {
	"grs_model5_rh_right_anims\idle_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"grs_model5_rh_right_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open" {
	"grs_model5_rh_right_anims\throw_open.smd"
	{ event AE_CL_PLAYSOUND 0 "Trakpak3.switchstand.machine_lv" }
	{ event AE_CL_PLAYSOUND 180 "Trakpak3.switchstand.blades_close_b" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close" {
	"grs_model5_rh_right_anims\throw_close.smd"
	{ event AE_CL_PLAYSOUND 0 "Trakpak3.switchstand.machine_lv" }
	{ event AE_CL_PLAYSOUND 180 "Trakpak3.switchstand.blades_close_b" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open_fast" {
	"grs_model5_rh_right_anims\throw_open_fast.smd"
	{ event AE_CL_PLAYSOUND 0 "Trakpak3.switchstand.machine_hv" }
	{ event AE_CL_PLAYSOUND 45 "Trakpak3.switchstand.blades_close_b" }
	fadein 0.2
	fadeout 0.2
	fps 120
}

$sequence "throw_close_fast" {
	"grs_model5_rh_right_anims\throw_close_fast.smd"
	{ event AE_CL_PLAYSOUND 0 "Trakpak3.switchstand.machine_hv" }
	{ event AE_CL_PLAYSOUND 45 "Trakpak3.switchstand.blades_close_b" }
	fadein 0.2
	fadeout 0.2
	fps 120
}

$collisionmodel "grs_model5_rh_right_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
