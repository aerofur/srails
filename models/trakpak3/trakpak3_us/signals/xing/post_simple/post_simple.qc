// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/post_simple.mdl"

$staticprop

$bodygroup "Body"
{
	studio "post_wood.smd"
}
$bodygroup "Crossbuck"
{
	studio "xbuck_usa_1t.smd"
	studio "xbuck_usa_2t.smd"
	studio "xbuck_usa_3t.smd"
	studio "xbuck_usa_4t.smd"
}
$bodygroup "Stop Sign"
{
	studio "none.smd"
	studio "stopsign_en.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0 -1.5 56

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\wood\"
$cdmaterials "models\trakpak3_common\signals\crossing\"
$cdmaterials "models\trakpak3_common\signage\"
$cdmaterials "models\trakpak3_us\signage\"

$cbox 0 0 0 0 0 0

$bbox -3.25 -20 -16.25 6 20 128

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"post_simple_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "post_simple_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
