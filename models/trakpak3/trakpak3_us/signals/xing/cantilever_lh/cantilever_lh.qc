// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/cantilever_lh.mdl"

$bodygroup "Body"
{
	studio "post.smd"
}
$bodygroup "Crossbuck"
{
	studio "xbuck_usa_1t.smd"
	studio "xbuck_usa_2t.smd"
	studio "xbuck_usa_3t.smd"
	studio "xbuck_usa_4t.smd"
}
$bodygroup "Bell"
{
	studio "none.smd"
	studio "bell_standard.smd"
	studio "bell_teardrop.smd"
	studio "bell_electronic.smd"
}
$bodygroup "Gate Lights"
{
	studio "none_2.smd"
	studio "gatelights_round.smd"
	studio "gatelights_flat.smd"
}
$bodygroup "Gate Pattern"
{
	studio "gate_rect.smd"
	studio "gate_diag.smd"
}
$bodygroup "Disable Lights"
{
	studio "lights_usa.smd"
	studio "none_3.smd"
}
$bodygroup "Extra Crossbuck"
{
	studio "xbuck_usa.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 128 3 151.917

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\crossing\"
$cdmaterials "models\trakpak3_common\signage\"
$cdmaterials "models\trakpak3_us\signage\"

$texturegroup "skinfamilies"
{
	{ "xlight_xh_b0" "xlight_xh_a0" "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" }
	{ "xlight_fr_b0" "xlight_fr_a0" "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" }
	{ "xlight_hc_b0" "xlight_hc_a0" "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" }
	{ "xlight_xh_b1" "xlight_xh_a1" "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" }
	{ "xlight_fr_b1" "xlight_fr_a1" "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" }
	{ "xlight_hc_b1" "xlight_hc_a1" "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" }
}

$cbox 0 0 0 0 0 0

$bbox -22 -23 -16.25 16 279 319.834

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "gate" "" -8 0 56.25 0 -89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"cantilever_lh_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_closed" {
	"cantilever_lh_anims\idle_closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"cantilever_lh_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "open" {
	"cantilever_lh_anims\open.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "close" {
	"cantilever_lh_anims\close.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$collisionmodel "cantilever_lh_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
