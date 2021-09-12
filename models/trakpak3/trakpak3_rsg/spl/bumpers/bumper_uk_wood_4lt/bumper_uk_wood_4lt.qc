// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/bumper_uk_wood_4lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bumper_uk_wood_4lt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -13.5 13.5 8.5

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\xings\"

$cbox 0 0 0 0 0 0

$bbox -88 -88 -16.25 61 61 33.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bumper_uk_wood_4lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bumper_uk_wood_4lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
