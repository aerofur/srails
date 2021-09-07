// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/mast_type1c_18ft.mdl"

$staticprop

$bodygroup "Body"
{
	studio "mast_type1c_18ft_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 108.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -9 -9 -16.25 9 9 233

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mast_type1c_18ft_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mast_type1c_18ft_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
