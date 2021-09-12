// Created by Crowbar 0.68

$modelname "trakpak3_rsg/spl/trackends/end_ang1rt.mdl"

$staticprop

$bodygroup "Body"
{
	studio "end_ang1rt_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 15.591 88.188 -20.001

$cdmaterials "models\trakpak3_common\tracks\ballast\"
$cdmaterials "models\trakpak3_common\tracks\ties\"
$cdmaterials "models\trakpak3_common\tracks\rails\"
$cdmaterials "models\trakpak3_common\misc\"

$texturegroup "skinfamilies"
{
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_brown"     "ballast_brown_blend"     }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_brown"     "ballast_brown"           }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_brown"     "ballast_brown_blend"     }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_brown"     "ballast_brown"           }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_gray"      "ballast_gray_blend"      }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_gray"      "ballast_gray"            }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_gray"      "ballast_gray_blend"      }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_gray"      "ballast_gray"            }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_tan"       "ballast_tan_blend"       }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_tan"       "ballast_tan"             }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_tan"       "ballast_tan_blend"       }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_tan"       "ballast_tan"             }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_dirty_plates" "singletie_wood_dirty_noplates" "ballast_limestone" "ballast_limestone_blend" }
	{ "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "singletie_wood_clean_plates" "singletie_wood_clean_noplates" "ballast_limestone" "ballast_limestone"       }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_dirty_plates" "singletie_conc_dirty_noplates" "ballast_limestone" "ballast_limestone_blend" }
	{ "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "singletie_conc_clean_plates" "singletie_conc_clean_noplates" "ballast_limestone" "ballast_limestone"       }
}

$cbox 0 0 0 0 0 0

$bbox -222.248 -124.002 -40.25 31 155.184 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"end_ang1rt_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "end_ang1rt_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
