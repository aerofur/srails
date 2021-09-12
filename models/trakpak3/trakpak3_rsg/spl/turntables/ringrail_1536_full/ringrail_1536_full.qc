// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/turntables/ringrail_1536_full.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ringrail_1536_full_ref.smd"
}


$surfaceprop "concrete"

$contents "solid"

$illumposition 0 0 -47

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ties\"

$cbox 0 0 0 0 0 0

$bbox -787 -787 -94 787 787 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ringrail_1536_full_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
