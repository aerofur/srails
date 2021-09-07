// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/mast_type0_09ft.mdl"

$staticprop

$bodygroup "Body"
{
	studio "mast_type0_09ft_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 55.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -3.25 -3.25 -16.25 3.25 3.25 127

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mast_type0_09ft_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mast_type0_09ft_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
