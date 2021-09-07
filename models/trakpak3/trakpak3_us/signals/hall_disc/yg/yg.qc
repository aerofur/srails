// Created by Crowbar 0.68

$modelname "trakpak3_us/signals/hall-disc/yg.mdl"

$bodygroup "Body"
{
	studio "banjo base.smd"
}
$bodygroup "Color"
{
	studio "yg_yel.smd"
	studio "yg_grn.smd"
}
$bodygroup "Night lamp"
{
	studio "banjo_day.smd"
	studio "banjo_night.smd"
}
$bodygroup "activated aspect color"
{
	studio "backing_wht.smd"
	studio "backing_grn.smd"
	studio "backing_yel.smd"
}
$bodygroup "mounting"
{
	studio "mount_left.smd"
	studio "mount_right.smd"
	studio "none.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 14.533

$cdmaterials "models\trakpak3_us\hall_disc\"
$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\proppertextures\"

$texturegroup "skinfamilies"
{
	{ "flatmetal_silver" }
	{ "flatmetal_black"  }
}

$cbox 0 0 0 0 0 0

$bbox -4.5 -28.183 -18.5 4.5 28.183 48.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "john" "" 0 -3.5 33.875 0 0 0 0 0 0 0 0 0


$sectionframes 30 30

$sequence "idle" {
	"yg_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "range" {
	"yg_anims\range.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "yg_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
