// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/semaphore_uq/rlg.mdl"

$bodygroup "Body"
{
	studio "base_high_a.smd"
}
$bodygroup "Color"
{
	studio "rlg_off.smd"
	studio "rlg_red.smd"
	studio "rlg_red_fl.smd"
	studio "rlg_lun.smd"
	studio "rlg_off_2.smd"
	studio "rlg_off_3.smd"
	studio "rlg_grn.smd"
	studio "rlg_grn_fl.smd"
}
$bodygroup "Blade"
{
	studio "blade_absolute.smd"
	studio "blade_permissive.smd"
	studio "blade_distant.smd"
	studio "blade_special.smd"
}
$bodygroup "Spectacle"
{
	studio "spectacle.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 34.499 -1.875 -6.75

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\semaphore\"

$texturegroup "skinfamilies"
{
	{ "semaphore_blades"     }
	{ "semaphore_blades_alt" }
}

$cbox 0 0 0 0 0 0

$bbox -5.25 -11.001 -20 8.75 80 7.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "arm" "" 5 -7.5 0 0 -89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"rlg_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"rlg_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rlg_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
