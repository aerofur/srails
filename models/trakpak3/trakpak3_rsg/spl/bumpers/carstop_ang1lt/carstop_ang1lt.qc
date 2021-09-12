// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/bumpers/carstop_ang1lt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "carstop_ang1lt_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition -0.001 -0.007 -3

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

$bbox -17.703 -37.116 -11 17.717 37.116 6.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"carstop_ang1lt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "carstop_ang1lt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
