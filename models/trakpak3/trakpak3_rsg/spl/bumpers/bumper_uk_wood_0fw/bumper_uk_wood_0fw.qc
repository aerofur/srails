// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/bumper_uk_wood_0fw.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bumper_uk_wood_0fw_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 19 8.5

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\xings\"

$cbox 0 0 0 0 0 0

$bbox -88 -48.25 -16.25 50 48.25 33.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bumper_uk_wood_0fw_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bumper_uk_wood_0fw_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
