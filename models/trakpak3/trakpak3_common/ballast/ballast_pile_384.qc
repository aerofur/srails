// Created by Crowbar 0.68

$modelname "trakpak3_common/ballast/ballast_pile_384.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ballast_pile_512_ref.smd"
}


$surfaceprop "gravel"

$contents "solid"

$illumposition 0 0 3

$cdmaterials "models\trakpak3_common\tracks\ballast\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     }
	{ "ballast_gray"      }
	{ "ballast_tan"       }
	{ "ballast_limestone" }
}

$cbox 0 0 0 0 0 0

$bbox -192.25 -192.25 -48.25 192.25 192.25 54

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ballast_pile_384_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ballast_pile_384_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
