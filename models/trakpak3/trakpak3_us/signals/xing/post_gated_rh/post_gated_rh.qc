// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/post_gated_rh.mdl"

$bodygroup "Body"
{
	studio "post_gated.smd"
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
	studio "nobell.smd"
	studio "bell_standard.smd"
	studio "bell_teardrop.smd"
	studio "bell_electronic.smd"
}
$bodygroup "Gate Lights"
{
	studio "none.smd"
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
	studio "none_2.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition -4.97 0 151.803

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\crossing\"
$cdmaterials "models\trakpak3_common\signage\"
$cdmaterials "models\trakpak3_us\signage\"

$texturegroup "skinfamilies"
{
	{ "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" "xlight_xh_a0" "xlight_xh_b0" }
	{ "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" "xlight_fr_a0" "xlight_fr_b0" }
	{ "xlight_bl_a0" "xlight_bl_b0" "xlight_bl_c0" "xlight_hc_a0" "xlight_hc_b0" }
	{ "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" "xlight_xh_a1" "xlight_xh_b1" }
	{ "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" "xlight_fr_a1" "xlight_fr_b1" }
	{ "xlight_bl_a1" "xlight_bl_b1" "xlight_bl_c1" "xlight_hc_a1" "xlight_hc_b1" }
}

$cbox 0 0 0 0 0 0

$bbox -16 -32.941 -16.25 16 23 319.605

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "gate" "" 8 0 56 0 89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"post_gated_rh_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_closed" {
	"post_gated_rh_anims\idle_closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"post_gated_rh_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "open" {
	"post_gated_rh_anims\open.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "close" {
	"post_gated_rh_anims\close.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$collisionmodel "post_gated_rh_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
