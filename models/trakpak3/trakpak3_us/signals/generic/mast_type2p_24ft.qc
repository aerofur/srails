// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/generic/mast_type2p_24ft.mdl"

$staticprop

$bodygroup "Body"
{
	studio "mast_type2p_24ft_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 11.25 152

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\concrete\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -31.5 -9 -16.25 9 9 320

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"mast_type2p_24ft_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mast_type2p_24ft_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
