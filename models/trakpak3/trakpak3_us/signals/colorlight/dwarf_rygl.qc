// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/colorlight/dwarf_rygl.mdl"

$staticprop

$bodygroup "Body"
{
	studio "dwarf_rygl_ref.smd"
}
$bodygroup "Red Lens"
{
	studio "dwarf_rygl_1_off.smd"
	studio "dwarf_rygl_1_red.smd"
	studio "dwarf_rygl_1_red_fl.smd"
	studio "dwarf_rygl_1_off_2.smd"
	studio "dwarf_rygl_1_off_3.smd"
	studio "dwarf_rygl_1_off_4.smd"
	studio "dwarf_rygl_1_off_5.smd"
	studio "dwarf_rygl_1_off_6.smd"
}
$bodygroup "Lunar Lens"
{
	studio "dwarf_rygl_2_off.smd"
	studio "dwarf_rygl_2_off_2.smd"
	studio "dwarf_rygl_2_off_3.smd"
	studio "dwarf_rygl_2_lun.smd"
	studio "dwarf_rygl_2_off_4.smd"
	studio "dwarf_rygl_2_off_5.smd"
	studio "dwarf_rygl_2_off_6.smd"
	studio "dwarf_rygl_2_off_7.smd"
}
$bodygroup "Yellow Lens"
{
	studio "dwarf_rygl_3_off.smd"
	studio "dwarf_rygl_3_off_2.smd"
	studio "dwarf_rygl_3_off_3.smd"
	studio "dwarf_rygl_3_off_4.smd"
	studio "dwarf_rygl_3_yel.smd"
	studio "dwarf_rygl_3_yel_fl.smd"
	studio "dwarf_rygl_3_off_5.smd"
	studio "dwarf_rygl_3_off_6.smd"
}
$bodygroup "Green Lens"
{
	studio "dwarf_rygl_4_off.smd"
	studio "dwarf_rygl_4_off_2.smd"
	studio "dwarf_rygl_4_off_3.smd"
	studio "dwarf_rygl_4_off_4.smd"
	studio "dwarf_rygl_4_off_5.smd"
	studio "dwarf_rygl_4_off_6.smd"
	studio "dwarf_rygl_4_grn.smd"
	studio "dwarf_rygl_4_grn_fl.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -3 4.75

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "red_on" "red_fl_b" }
	{ "pur_on" "pur_fl_b" }
}

$cbox 0 0 0 0 0 0

$bbox -4.25 -6.25 -16.25 10.25 6.25 26.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"dwarf_rygl_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dwarf_rygl_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
