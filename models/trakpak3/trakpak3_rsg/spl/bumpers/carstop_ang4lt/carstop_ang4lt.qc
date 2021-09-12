// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/carstop_ang4lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "carstop_ang4lt_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition -0.007 -0.003 -3

$opaque

$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "target_red"         }
	{ "target_yellow"      }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -31.365 -31.363 -11 31.367 31.361 6.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"carstop_ang4lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "carstop_ang4lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
