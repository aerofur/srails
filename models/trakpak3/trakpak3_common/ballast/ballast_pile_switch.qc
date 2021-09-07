// Created by Crowbar 0.68

$modelname "trakpak3_common/ballast/ballast_pile_switch.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ballast_pile_switch_ref.smd"
}


$surfaceprop "gravel"

$contents "solid"

$illumposition 92 0 -20

$cdmaterials "models\trakpak3_common\tracks\ballast\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown"     }
	{ "ballast_gray"      }
	{ "ballast_tan"       }
	{ "ballast_limestone" }
}

$cbox 0 0 0 0 0 0

$bbox -88.25 0 -40.25 88.25 184.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ballast_pile_switch_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ballast_pile_switch_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
