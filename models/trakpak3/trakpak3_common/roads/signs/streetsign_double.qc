// Created by Crowbar 0.68

$modelname "trakpak3_common/roads/signs/streetsign_double.mdl"

$staticprop

$bodygroup "Body"
{
	studio "streetsign_double_ref.smd"
}


$surfaceprop "metalvent"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\trakpak3_common\signage\street\"
$cdmaterials "models\trakpak3_common\metal\"

$texturegroup "skinfamilies"
{
	{ "green_1" }
	{ "green_2" }
	{ "blue_1"  }
	{ "blue_2"  }
	{ "brown_1" }
	{ "brown_2" }
}

$attachment "text1" "static_prop" 0.62 0 43 rotate 0 0 0
$attachment "text2" "static_prop" -0.62 0 43 rotate 0 -180 0

$cbox 0 0 0 0 0 0

$bbox -0.75 -16.25 -48.25 0.75 16.25 48

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"streetsign_double_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "streetsign_double_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
