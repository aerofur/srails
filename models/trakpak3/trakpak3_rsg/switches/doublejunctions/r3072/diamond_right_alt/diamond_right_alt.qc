// Created by Crowbar 0.68

$modelname "trakpak3_rsg/switches/doublejunctions/r3072/diamond_right_alt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "diamond_right_alt_ref.smd"
}


$surfaceprop "solidmetal"

$contents "solid"

$illumposition 1.5 -29 -11

$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\composite\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_brown"     "ballast_brown_dirty"     }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_brown"     "ballast_brown"           }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_brown"     "ballast_brown_dirty"     }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_brown"     "ballast_brown"           }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_gray"      "ballast_gray_dirty"      }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_gray"      "ballast_gray"            }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_gray"      "ballast_gray_dirty"      }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_gray"      "ballast_gray"            }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_tan"       "ballast_tan_dirty"       }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_tan"       "ballast_tan"             }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_tan"       "ballast_tan_dirty"       }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_tan"       "ballast_tan"             }
	{ "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_limestone" "ballast_limestone_dirty" }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_limestone" "ballast_limestone"       }
	{ "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_limestone" "ballast_limestone_dirty" }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_limestone" "ballast_limestone"       }
}

$attachment "autopoint1" "static_prop" 320 0 0 rotate 0 -90 0
$attachment "frog1" "static_prop" 168 -28 -7 rotate 0 -90 0
$attachment "frog3" "static_prop" 0 28 -7 rotate 0 -90 0
$attachment "frog2" "static_prop" -8 -28 -7 rotate 0 -90 0
$attachment "frog4" "static_prop" -156 28 -7 rotate 0 -90 0
$attachment "autopoint2" "static_prop" -288 0 0 rotate 0 -90 0

$cbox 0 0 0 0 0 0

$bbox -284.25 -138 -22 342.25 141 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"diamond_right_alt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "diamond_right_alt_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 15

}
