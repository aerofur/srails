// Created by Crowbar 0.68

$modelname "trakpak3_us/switchstands/racor_22_left.mdl"

$bodygroup "Body"
{
	studio "racor_22_ref.smd"
}
$bodygroup "Target"
{
	studio "target_circle_single.smd"
	studio "target_circle_double.smd"
	studio "target_rectangle.smd"
	studio "target_percent.smd"
	studio "target_arrow_left.smd"
	studio "target_lantern.smd"
	studio "target_cube_left.smd"
	studio "target_cube_right_reversed.smd"
	studio "target_derail.smd"
}
$bodygroup "Locking Chain"
{
	studio "chain_mn.smd"
	studio "chain_dv.smd"
	studio "chain_off.smd"
	studio "none.smd"
}
$bodygroup "Ridiculous Ties"
{
	studio "ties_wood.smd"
	studio "ties_conc.smd"
	studio "none_2.smd"
}
$bodygroup "Disable Rod"
{
	studio "rod_left.smd"
	studio "none_3.smd"
}
$bodygroup "Lever"
{
	studio "lever_ballhandle.smd"
}
$bodygroup "Crank"
{
	studio "crank_left.smd"
}
$bodygroup "Chevron"
{
	studio "chevron_left.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 35.499 -4 8.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_us\switchstands\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "target_white" "target_red"    "cube_left_1"   "wht_on" "red_on" "target_derail_text"        }
	{ "target_white" "target_yellow" "cube_left_2"   "wht_on" "yel_on" "target_derail_d"           }
	{ "target_green" "target_red"    "cube_left_3"   "grn_on" "red_on" "target_derail_text_purple" }
	{ "target_green" "target_yellow" "cube_derail_1" "grn_on" "yel_on" "target_derail_d_purple"    }
	{ "target_white" "target_red"    "cube_derail_2" "wht_on" "red_on" "target_derail_text"        }
}

$cbox 0 0 0 0 0 0

$bbox -15.25 -32 -7 23 102.998 24

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "target" "" 0 0 10.5 0 -89.999982 0 0 0 0 0 0 0
$definebone "crank_left" "target" 2 2 -9.75 0 0 0 0 0 0 0 0 0
$definebone "lever1" "" -11.25 0 6.25 0 -179.999978 0 0 0 0 0 0 0


$sequence "idle" {
	"racor_22_left_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_close" {
	"racor_22_left_anims\idle_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"racor_22_left_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open" {
	"racor_22_left_anims\throw_open.smd"
	{ event AE_CL_PLAYSOUND 1 "Trakpak3.switchstand.latch_contact" }
	{ event AE_CL_PLAYSOUND 80 "Trakpak3.switchstand.blades_close_a" }
	{ event AE_CL_PLAYSOUND 83 "Trakpak3.derail.clang" }
	{ event AE_CL_PLAYSOUND 89 "Trakpak3.switchstand.latch_close" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close" {
	"racor_22_left_anims\throw_close.smd"
	{ event AE_CL_PLAYSOUND 1 "Trakpak3.switchstand.latch_contact" }
	{ event AE_CL_PLAYSOUND 80 "Trakpak3.switchstand.blades_close_a" }
	{ event AE_CL_PLAYSOUND 83 "Trakpak3.derail.clang" }
	{ event AE_CL_PLAYSOUND 89 "Trakpak3.switchstand.latch_close" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "racor_22_left_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
