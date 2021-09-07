// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/gantry_3_2w.mdl"

$staticprop

$bodygroup "Body"
{
	studio "gantry_3_2w_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 8.5 0 218

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

$bbox -39 -343 -16.25 39 360 452

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"gantry_3_2w_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "gantry_3_2w_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
