// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/semaphore_uq/ryg_dwarf.mdl"

$bodygroup "Empty"
{
	studio "none.smd"
}
$bodygroup "Color"
{
	studio "ryg_dead.smd"
	studio "ryg_red.smd"
	studio "ryg_red_fl.smd"
	studio "ryg_dead_2.smd"
	studio "ryg_yel.smd"
	studio "ryg_yel_fl.smd"
	studio "ryg_grn.smd"
	studio "ryg_grn_fl.smd"
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

$illumposition 2.875 -0.25 -7.625

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\semaphore\"

$texturegroup "skinfamilies"
{
	{ "semaphore_blades"     }
	{ "semaphore_blades_alt" }
}

$cbox 0 0 0 0 0 0

$bbox -6.125 -9.25 -18.25 6.625 15 3

$definebone "static_prop" "" 0 0 0 0 89.999982 0 0 0 0 0 0 0
$definebone "Group" "" 0 0 0 0 0.000057 89.999982 0 0 0 0 0 0
$definebone "john" "" 0 0 0 0 89.999982 0 0 0 0 0 0 0


$sectionframes 30 30

$sequence "idle" {
	"ryg_dwarf_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"ryg_dwarf_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ryg_dwarf_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
