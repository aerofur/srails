// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/cantilever_2.mdl"

$staticprop

$bodygroup "Body"
{
	studio "cantilever_2_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -109 8 200

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

$bbox -48 -242.25 -16.25 32 24 416

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"cantilever_2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "cantilever_2_physics.smd"
{
	$mass 15000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
