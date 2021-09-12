// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/sidings/p2lt_left_minr3072_+0768x-0384_+1440x-0960_dv.mdl"

$bodygroup "Body"
{
	studio "p2lt_left_minr3072_+0768x-0384_+1440x-0960_dv_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -480 720 -20

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

$attachment "autopoint1" "static_prop" -413 825 0 rotate 0 0 0
$attachment "frog1" "static_prop" -305 544 -7 rotate 0 0 0
$attachment "bladecenter1" "static_prop" 0 0 -7 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1497 -1074 -40.25 57 114 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "blades" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"p2lt_left_minr3072_+0768x-0384_+1440x-0960_dv_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"p2lt_left_minr3072_+0768x-0384_+1440x-0960_dv_anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 2
}

$collisionmodel "p2lt_left_minr3072_+0768x-0384_+1440x-0960_dv_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 51

}
