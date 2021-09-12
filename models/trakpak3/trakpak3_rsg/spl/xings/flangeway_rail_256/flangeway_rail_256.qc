// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/xings/flangeway_rail_256.mdl"

$staticprop

$bodygroup "Body"
{
	studio "flangeway_rail_256_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\trakpak3_common\tracks\rails\"

$cbox 0 0 0 0 0 0

$bbox -128 -30 -4 128 30 4

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"flangeway_rail_256_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
