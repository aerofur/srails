// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/dollpost/doll_type2c.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pole_c.smd"
}
$bodygroup "Light"
{
	studio "light.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -5.75 -6.25 16.5

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\signals\reflector\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "metal_black"      }
}

$cbox 0 0 0 0 0 0

$bbox -3.5 -15 -0.25 16 3.5 34.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"doll_type2c_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "doll_type2c_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
