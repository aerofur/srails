// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/bumper_knuckle_ang2rt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bumper_knuckle_ang2rt_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 0.231 0.894 7.501

$opaque

$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "target_red"         }
	{ "target_yellow"      }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -58.592 -52.33 -17 56.805 52.792 34.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bumper_knuckle_ang2rt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bumper_knuckle_ang2rt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
