// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/griswold.mdl"

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
$bodygroup "Banner"
{
	studio "banner_english.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 54

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\crossing\"
$cdmaterials "models\trakpak3_common\signage\"
$cdmaterials "models\trakpak3_us\signage\"

$texturegroup "skinfamilies"
{
	{ "xlight_xh_b0" "xlight_xh_a0" }
	{ "xlight_fr_b0" "xlight_fr_a0" }
	{ "xlight_hc_b0" "xlight_hc_a0" }
	{ "xlight_xh_b1" "xlight_xh_a1" }
	{ "xlight_fr_b1" "xlight_fr_a1" }
	{ "xlight_hc_b1" "xlight_hc_a1" }
}

$cbox 0 0 0 0 0 0

$bbox -12 -23 -16.25 12 23 124

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "banner" "" 0 0 44 0 -89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"griswold_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_open" {
	"griswold_anims\idle_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_closed" {
	"griswold_anims\idle_closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "close" {
	"griswold_anims\close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "open" {
	"griswold_anims\open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "griswold_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
