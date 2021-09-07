// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/mast_bracketpost.mdl"

$staticprop

$bodygroup "Body"
{
	studio "mast_bracketpost_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 11.5 105.25

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver"   }
	{ "metal_black"        }
	{ "bridgemetal1_white" }
	{ "bridgemetal1_black" }
	{ "bridgemetal2_white" }
	{ "bridgemetal2_black" }
}

$cbox 0 0 0 0 0 0

$bbox -32.25 -32.25 -16.25 9 32.25 226.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mast_bracketpost_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mast_bracketpost_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
