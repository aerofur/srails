// Created by Crowbar 0.68

$modelname "trakpak3_us/derails/wch_hbxs8_dv.mdl"

$bodygroup "Body"
{
	studio "wch_hb8_base.smd"
}
$bodygroup "Derail"
{
	studio "wch_hbxs8.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 16.456 0 -8.374

$cdmaterials "models\trakpak3_us\switchstands\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "target_yellow" }
	{ "target_orange" }
}

$cbox 0 0 0 0 0 0

$bbox -20.25 -2.25 -16.748 20.25 32.913 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "derail" "" 24.5 0 -10.25 0 89.999982 0 0 0 0 0 0 0


$sequence "idle" {
	"wch_hbxs8_dv_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"wch_hbxs8_dv_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "wch_hbxs8_dv_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
