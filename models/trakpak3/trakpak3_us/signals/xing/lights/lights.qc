// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/lights.mdl"

$staticprop

$bodygroup "Body"
{
	studio "lights.smd"
}
$bodygroup "Lights"
{
	studio "lights_xhatch.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 9.25

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\crossing\"

$texturegroup "skinfamilies"
{
	{ "xlight_xh_a0" "xlight_xh_b0" }
	{ "xlight_fr_a0" "xlight_fr_b0" }
	{ "xlight_hc_a0" "xlight_hc_b0" }
	{ "xlight_xh_a1" "xlight_xh_b1" }
	{ "xlight_fr_a1" "xlight_fr_b1" }
	{ "xlight_hc_a1" "xlight_hc_b1" }
}

$cbox 0 0 0 0 0 0

$bbox -16 -23 0 16 23 18.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"lights_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
