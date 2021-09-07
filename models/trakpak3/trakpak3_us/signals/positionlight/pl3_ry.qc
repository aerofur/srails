// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl3_ry.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl3_ry_ref.smd"
}
$bodygroup "Color"
{
	studio "pl3_ry_off.smd"
	studio "pl3_ry_red.smd"
	studio "pl3_ry_off_2.smd"
	studio "pl3_ry_yel.smd"
	studio "pl3_ry_yel_fl.smd"
	studio "pl3_ry_off_3.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 -4.75 0

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -6.25 -28.25 -28.25 14.5 28.25 28.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl3_ry_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl3_ry_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
