// Created by Crowbar 0.68

$modelname "trakpak3_us/mow/bluelight_1.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bluelight_1_ref.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 -0.5

$opaque

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_common\switchstands\"
$cdmaterials "models\trakpak3_us\signals\bluelight\"

$texturegroup "skinfamilies"
{
	{ "bluelight_circle_off" "bluelight_solid_off" }
	{ "bluelight_circle_on"  "bluelight_solid_on"  }
	{ "redlight_circle_off"  "redlight_solid_off"  }
	{ "redlight_circle_on"   "redlight_solid_on"   }
	{ "redlight_circle_fl"   "redlight_solid_fl"   }
}

$cbox 0 0 0 0 0 0

$bbox -1.75 -3.875 -7.25 1.75 3.875 6

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bluelight_1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bluelight_1_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
