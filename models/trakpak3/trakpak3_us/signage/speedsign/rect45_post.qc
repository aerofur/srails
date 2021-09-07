// Created by Crowbar 0.68

$modelname "trakpak3_us/signage/speedsign/rect45_post.mdl"

$staticprop

$bodygroup "Body"
{
	studio "rect45_post_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0.125 -31

$cdmaterials "models\trakpak3_common\metal\"
$cdmaterials "models\trakpak3_us\signage\"

$texturegroup "skinfamilies"
{
	{ "speedsigns_white"  }
	{ "speedsigns_yellow" }
	{ "speedsigns_gold"   }
	{ "speedsigns_green"  }
	{ "speedsigns_red"    }
	{ "speedsigns_blue"   }
	{ "speedsigns_black"  }
}

$attachment "text1" "static_prop" 0.25 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1.25 -9 -72.25 1.25 9 10.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"rect45_post_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "rect45_post_physics.smd"
{
	$mass 150
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
