// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/searchlight/dwarf_searchlight_2x.mdl"

$staticprop

$bodygroup "Body"
{
	studio "dwarf_searchlight_1x.smd"
}
$bodygroup "Color (Bottom)"
{
	studio "sl_d1_off.smd"
	studio "sl_d1_red.smd"
	studio "sl_d1_red_fl.smd"
	studio "sl_d1_lun.smd"
	studio "sl_d1_yel.smd"
	studio "sl_d1_yel_fl.smd"
	studio "sl_d1_grn.smd"
	studio "sl_d1_grn_fl.smd"
}
$bodygroup "Color (Top)"
{
	studio "sl_d2_off.smd"
	studio "sl_d2_red.smd"
	studio "sl_d2_red_fl.smd"
	studio "sl_d2_lun.smd"
	studio "sl_d2_yel.smd"
	studio "sl_d2_yel_fl.smd"
	studio "sl_d2_grn.smd"
	studio "sl_d2_grn_fl.smd"
}
$bodygroup "Second Housing"
{
	studio "dwarf_searchlight_2x.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -7.25 6.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\generic\"

$texturegroup "skinfamilies"
{
	{ "red_on" "red_fl_b" }
	{ "pur_on" "pur_fl_b" }
}

$cbox 0 0 0 0 0 0

$bbox -4.25 -5.25 -8.25 18.5 5.25 21.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"dwarf_searchlight_2x_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dwarf_searchlight_2x_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
