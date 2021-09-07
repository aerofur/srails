// Created by Crowbar 0.68

$modelname "trakpak3_common/ballast/ballast_pile_1024.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ballast_pile_512_ref.smd"
}


$surfaceprop "gravel"

$contents "solid"

$illumposition 0 0 8

$cdmaterials "models\trakpak3_common\tracks\ballast\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     }
	{ "ballast_gray"      }
	{ "ballast_tan"       }
	{ "ballast_limestone" }
}

$cbox 0 0 0 0 0 0

$bbox -512.25 -512.25 -128.25 512.25 512.25 144

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ballast_pile_1024_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ballast_pile_1024_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
