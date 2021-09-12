// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/xings/flangeway_rail_128.mdl"

$staticprop

$bodygroup "Body"
{
	studio "flangeway_rail_128_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -64 -30 -4 64 30 4

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"flangeway_rail_128_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
