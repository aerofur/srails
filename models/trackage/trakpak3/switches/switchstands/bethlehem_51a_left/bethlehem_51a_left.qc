// Created by Crowbar 0.68

$modelname "trakpak3_us/switchstands/bethlehem_51a_left.mdl"

$bodygroup "Body"
{
	studio "bethlehem_51a.smd"
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
$bodygroup "Lever Handle"
{
	studio "lever_blockhandle.smd"
	studio "lever_bowhandle.smd"
}
$bodygroup "Ridiculous Ties"
{
	studio "ties_wood.smd"
	studio "ties_conc.smd"
	studio "none.smd"
}
$bodygroup "Disable Rod"
{
	studio "rod_left.smd"
	studio "none_2.smd"
}
$bodygroup "Lock 1"
{
	studio "lock.smd"
}
$bodygroup "Lock 2"
{
	studio "lock2.smd"
}
$bodygroup "Pedal 1"
{
	studio "pedal.smd"
}
$bodygroup "Pedal 2"
{
	studio "pedal2.smd"
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

$illumposition 42.999 -10.397 7

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

$bbox -15 -18 -7 35.795 103.998 21

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "target" "" 1 0 7.5 0 -179.999978 0 0 0 0 0 0 0
$definebone "lever1" "" -8.75 0 3 0 -179.999978 0 0 0 0 0 0 0
$definebone "lever2" "" -8.75 0 3 0 0 89.999982 0 0 0 0 0 0
$definebone "crank_left" "target" -2 2 -7.75 0 89.999982 0 0 0 0 0 0 0
$definebone "lock1" "" -11.5 -10 4.875 0 89.999982 0 0 0 0 0 0 0
$definebone "lock2" "" -11.5 10 4.875 0 89.999982 0 0 0 0 0 0 0
$definebone "pedal1" "" -12.125 -10 1.625 0 89.999982 0 0 0 0 0 0 0
$definebone "pedal2" "" -12.125 10 1.625 0 89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"bethlehem_51a_left_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_close" {
	"bethlehem_51a_left_anims\idle_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"bethlehem_51a_left_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open" {
	"bethlehem_51a_left_anims\throw_open.smd"
	{ event AE_CL_PLAYSOUND 7 "Trakpak3.switchstand.latch_lift" }
	{ event AE_CL_PLAYSOUND 33 "Trakpak3.switchstand.latch_drop" }
	{ event AE_CL_PLAYSOUND 72 "Trakpak3.switchstand.latch_contact" }
	{ event AE_CL_PLAYSOUND 72 "Trakpak3.switchstand.blades_close_a" }
	{ event AE_CL_PLAYSOUND 95 "Trakpak3.switchstand.latch_close" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close" {
	"bethlehem_51a_left_anims\throw_close.smd"
	{ event AE_CL_PLAYSOUND 7 "Trakpak3.switchstand.latch_lift" }
	{ event AE_CL_PLAYSOUND 33 "Trakpak3.switchstand.latch_drop" }
	{ event AE_CL_PLAYSOUND 72 "Trakpak3.switchstand.latch_contact" }
	{ event AE_CL_PLAYSOUND 72 "Trakpak3.switchstand.blades_close_a" }
	{ event AE_CL_PLAYSOUND 95 "Trakpak3.switchstand.latch_close" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bethlehem_51a_left_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
