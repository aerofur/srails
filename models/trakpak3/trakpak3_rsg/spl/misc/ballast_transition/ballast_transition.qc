// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/misc/ballast_transition.mdl"

$staticprop

$bodygroup "Body"
{
	studio "ballast_transition_ref.smd"
}


$surfaceprop "no_decal"

$contents "solid"

$illumposition 0 0 -9

$cdmaterials "models\trakpak3_common\tracks\ballast\"

$texturegroup "skinfamilies"
{
	{ "ballast_brown_blend"     }
	{ "ballast_gray_blend"      }
	{ "ballast_tan_blend"       }
	{ "ballast_limestone_blend" }
}

$cbox 0 0 0 0 0 0

$bbox -64 -64 -18 64 64 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ballast_transition_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
