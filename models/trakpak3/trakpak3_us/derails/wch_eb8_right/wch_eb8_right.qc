// Created by Crowbar 0.68

$modelname "trakpak3_us/derails/wch_eb8_right.mdl"

$bodygroup "Body"
{
	studio "wch_eb8_base.smd"
}
$bodygroup "No Flag"
{
	studio "wch_eb8_flag.smd"
	studio "none.smd"
}
$bodygroup "Derail"
{
	studio "wch_eb8_right.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 18.25 -1.5 2.5

$cdmaterials "models\trakpak3_us\switchstands\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "target_yellow" "target_derail_text"        }
	{ "target_yellow" "target_derail_d"           }
	{ "target_yellow" "target_derail_text_purple" }
	{ "target_yellow" "target_derail_d_purple"    }
	{ "target_orange" "target_derail_text"        }
	{ "target_orange" "target_derail_d"           }
	{ "target_orange" "target_derail_text_purple" }
	{ "target_orange" "target_derail_d_purple"    }
}

$cbox 0 0 0 0 0 0

$bbox -20.25 -2.5 -16.25 15 39 21

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "flag" "" 13 -13.5 -13.75 0 -179.999978 0 0 0 0 0 0 0
$definebone "derail" "" 10 0 -10.5 0 89.999982 0 0 0 0 0 0 0


$sectionframes 30 130

$sequence "idle" {
	"wch_eb8_right_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_close" {
	"wch_eb8_right_anims\idle_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"wch_eb8_right_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open" {
	"wch_eb8_right_anims\throw_open.smd"
	{ event AE_CL_PLAYSOUND 15 "Metal_Box.ImpactHard" }
	{ event AE_CL_PLAYSOUND 25 "Metal_Box.ImpactSoft" }
	{ event AE_CL_PLAYSOUND 97 "Canister.ImpactHard" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close" {
	"wch_eb8_right_anims\throw_close.smd"
	{ event AE_CL_PLAYSOUND 67 "Trakpak3.derail.clang" }
	{ event AE_CL_PLAYSOUND 110 "Trakpak3.switchstand.blades_close_a" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_open_noflag" {
	"wch_eb8_right_anims\throw_open_noflag.smd"
	{ event AE_CL_PLAYSOUND 67 "Canister.ImpactHard" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw_close_noflag" {
	"wch_eb8_right_anims\throw_close_noflag.smd"
	{ event AE_CL_PLAYSOUND 67 "Trakpak3.derail.clang" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "wch_eb8_right_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
