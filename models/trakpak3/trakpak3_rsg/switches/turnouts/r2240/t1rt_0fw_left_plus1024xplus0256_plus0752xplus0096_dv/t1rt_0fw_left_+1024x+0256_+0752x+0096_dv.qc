// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/turnouts/r2240/t1rt_0fw_left_+1024x+0256_+0752x+0096_dv.mdl"

$bodygroup "Body"
{
	studio "t1rt_0fw_left_+1024x+0256_+0752x+0096_dv_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 128 512 -20

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

$attachment "autopoint1" "static_prop" 272 1086 0 rotate 0 0 0
$attachment "frog1" "static_prop" 123 612 -7 rotate 0 0 0
$attachment "bladecenter1" "static_prop" 29 116 -7 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1055 -124 -40.25 31 380 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "blades" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"t1rt_0fw_left_+1024x+0256_+0752x+0096_dv_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"t1rt_0fw_left_+1024x+0256_+0752x+0096_dv_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 2
}

$collisionmodel "t1rt_0fw_left_+1024x+0256_+0752x+0096_dv_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 24

}
