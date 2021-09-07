// Created by Crowbar 0.68

$modelname "trakpak3_common/ballast/ballast_pile_256.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ballast_pile_512_ref.smd"
}


$surfaceprop "gravel"

$contents "solid"

$illumposition 0 0 2

$cdmaterials "models\trakpak3_common\tracks\ballast\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     }
	{ "ballast_gray"      }
	{ "ballast_tan"       }
	{ "ballast_limestone" }
}

$cbox 0 0 0 0 0 0

$bbox -128.25 -128.25 -32.25 128.25 128.25 36

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ballast_pile_256_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ballast_pile_256_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
