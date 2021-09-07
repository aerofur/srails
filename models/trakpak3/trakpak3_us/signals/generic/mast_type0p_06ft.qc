// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/mast_type0p_06ft.mdl"

$staticprop

$bodygroup "Body"
{
	studio "mast_type0p_06ft_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 44

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -3.5 -3.5 -16.25 3.5 3.5 104

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mast_type0p_06ft_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mast_type0p_06ft_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
