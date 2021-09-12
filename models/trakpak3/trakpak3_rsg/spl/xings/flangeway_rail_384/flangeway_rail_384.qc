// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/xings/flangeway_rail_384.mdl"

$staticprop

$bodygroup "Body"
{
	studio "flangeway_rail_384_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -192 -30 -4 192 30 4

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"flangeway_rail_384_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
