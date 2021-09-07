// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/xing/multitrack.mdl"

$staticprop

$bodygroup "Body"
{
	studio "multitrack_ref.smd"
}
$bodygroup "Number of Tracks"
{
	studio "2_tracks.smd"
	studio "3_tracks.smd"
	studio "4_tracks.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -0.125 0

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\signage\"
$cdmaterials "models\trakpak3_ca\signage\"

$texturegroup "skinfamilies"
{
	{ "crossbuck_usa" }
	{ "crossbuck_can" }
}

$cbox 0 0 0 0 0 0

$bbox -0.25 -10.75 -9.25 1.25 10.75 9.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"multitrack_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "multitrack_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
