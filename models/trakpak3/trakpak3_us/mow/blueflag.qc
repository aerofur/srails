// Created by Crowbar 0.68

$modelname "trakpak3_us/mow/blueflag.mdl"

$staticprop

$bodygroup "Body"
{
	studio "blueflag_ref.smd"
}
$bodygroup "Flag Type"
{
	studio "blueflag_basic.smd"
	studio "blueflag_maw.smd"
	studio "blueflag_cc.smd"
	studio "blueflag_dne.smd"
}
$bodygroup "Light"
{
	studio "none.smd"
	studio "blueflag_light_off.smd"
	studio "blueflag_light_on.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition -12.5 0 17.75

$opaque

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\signage\"
$cdmaterials "models\trakpak3_us\signals\bluelight\"
$cdmaterials "models\trakpak3_common\switchstands\"

$texturegroup "skinfamilies"
{
	{ "blueflag_clean" }
	{ "blueflag_dirty" }
}

$cbox 0 0 0 0 0 0

$bbox -4.25 -29.125 -13.25 4.25 4.25 48.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"blueflag_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "blueflag_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 7

}
