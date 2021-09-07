// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/positionlight/pl4_early.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pl4_early_ref.smd"
}
$bodygroup "Color"
{
	studio "pl4_early_off.smd"
	studio "pl4_early_red.smd"
	studio "pl4_early_lun.smd"
	studio "pl4_early_yel.smd"
	studio "pl4_early_grn.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -1.5 0.75

$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "wht_on" "wht_off" }
	{ "lun_on" "lun_off" }
}

$cbox 0 0 0 0 0 0

$bbox -3.25 -10.5 -8.25 6.25 10.5 10.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pl4_early_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pl4_early_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
