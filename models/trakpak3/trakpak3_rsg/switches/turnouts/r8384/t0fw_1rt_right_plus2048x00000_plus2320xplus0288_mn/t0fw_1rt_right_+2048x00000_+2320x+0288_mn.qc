// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/turnouts/r8384/t0fw_1rt_right_+2048x00000_+2320x+0288_mn.mdl"

$bodygroup "Body"
{
	studio "t0fw_1rt_right_+2048x00000_+2320x+0288_mn_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 142 1171.5 -20

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_brown_dirty"     "ballast_brown"     }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_brown"           "ballast_brown"     }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_brown_dirty"     "ballast_brown"     }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_brown"           "ballast_brown"     }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_gray_dirty"      "ballast_gray"      }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_gray"            "ballast_gray"      }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_gray_dirty"      "ballast_gray"      }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_gray"            "ballast_gray"      }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_tan_dirty"       "ballast_tan"       }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_tan"             "ballast_tan"       }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_tan_dirty"       "ballast_tan"       }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_tan"             "ballast_tan"       }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_limestone_dirty" "ballast_limestone" }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_limestone"       "ballast_limestone" }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_limestone_dirty" "ballast_limestone" }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_limestone"       "ballast_limestone" }
}

$attachment "frog1" "static_prop" 28 1111 -7 rotate 0 0 0
$attachment "bladecenter1" "static_prop" 0 136 -7 rotate 0 0 0
$attachment "autopoint1" "static_prop" 172 1831 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -2351 -128 -40.25 8 412 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "blades" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"t0fw_1rt_right_+2048x00000_+2320x+0288_mn_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"t0fw_1rt_right_+2048x00000_+2320x+0288_mn_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 2
}

$collisionmodel "t0fw_1rt_right_+2048x00000_+2320x+0288_mn_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 19

}
