// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/turntables/pit_1536_modern.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pit_1536_modern_ref.smd"
}


$surfaceprop "concrete"

$contents "solid"

$illumposition 0 0 -51

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\concrete\"
$cdmaterials "models\trakpak3_common\metal\"

$cbox 0 0 0 0 0 0

$bbox -896.25 -896.25 -102.25 896.25 896.25 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pit_1536_modern_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pit_1536_modern_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 49

}
