// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/misc/aar_plate_c.mdl"

$staticprop

$bodygroup "Body"
{
	studio "aar_plate_c_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 80

$cdmaterials "models\trakpak3_rsg\"

$cbox 0 0 0 0 0 0

$bbox -4.25 -64.25 -16.25 4.25 64.25 176.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"aar_plate_c_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "aar_plate_c_physics.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
