// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/semaphore_uq/rl_dwarf.mdl"

$bodygroup "Empty"
{
	studio "none.smd"
}
$bodygroup "Color"
{
	studio "rl_dead.smd"
	studio "rl_red.smd"
	studio "rl_red_fl.smd"
	studio "rl_lun.smd"
	studio "rl_dead_2.smd"
	studio "rl_dead_3.smd"
	studio "rl_dead_4.smd"
	studio "rl_dead_5.smd"
}
$bodygroup "Blade"
{
	studio "board_absolute.smd"
	studio "board_permissive.smd"
	studio "board_distant.smd"
	studio "board_special.smd"
}
$bodygroup "Base"
{
	studio "base_mechanical.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 4.437 -0.25 -7.625

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\semaphore\"

$texturegroup "skinfamilies"
{
	{ "semaphore_blades"     }
	{ "semaphore_blades_alt" }
}

$cbox 0 0 0 0 0 0

$bbox -6.125 -6.125 -18.25 6.625 15 3

$definebone "static_prop" "" 0 0 0 0 89.999982 0 0 0 0 0 0 0
$definebone "Group" "" 0 0 0 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "john" "" 0 0 0 0 89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"rl_dwarf_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"rl_dwarf_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rl_dwarf_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
