// Created by Crowbar 0.68

$modelname "lazpack/trucks/FB3.mdl"

$bodygroup "Body"
{
	studio "bolster.smd"
}
$bodygroup "Bearing LF"
{
	studio "hyattrecLF.smd"
	studio "hyattrecsnubLF.smd"
	studio "hyattopenLF.smd"
	studio "hyattopensnubLF.smd"
	studio "timkenLF.smd"
	studio "timkenrecLF.smd"
	studio "timkensnubLF.smd"
	studio "timkensnubrecLF.smd"
}
$bodygroup "Bearing LM"
{
	studio "hyattrecLM.smd"
	studio "hyattrecsnubLM.smd"
	studio "hyattopenLM.smd"
	studio "hyattopensnubLM.smd"
	studio "timkenLM.smd"
	studio "timkenrecLM.smd"
	studio "timkensnubLM.smd"
	studio "timkensnubrecLM.smd"
}
$bodygroup "Bearing LR"
{
	studio "hyattrecLR.smd"
	studio "hyattrecsnubLR.smd"
	studio "hyattopenLR.smd"
	studio "hyattopensnubLR.smd"
	studio "timkenLR.smd"
	studio "timkenrecLR.smd"
	studio "timkensnubLR.smd"
	studio "timkensnubrecLR.smd"
}
$bodygroup "Bearing RF"
{
	studio "hyattrecRF.smd"
	studio "hyattrecsnubRF.smd"
	studio "hyattopenRF.smd"
	studio "hyattopensnubRF.smd"
	studio "timkenRF.smd"
	studio "timkenrecRF.smd"
	studio "timkensnubRF.smd"
	studio "timkensnubrecRF.smd"
}
$bodygroup "Bearing RM"
{
	studio "hyattrecRM.smd"
	studio "hyattrecsnubRM.smd"
	studio "hyattopenRM.smd"
	studio "hyattopensnubRM.smd"
	studio "timkenrecRM.smd"
	studio "timkenRM.smd"
	studio "timkensnubRM.smd"
	studio "timkensnubrecRM.smd"
}
$bodygroup "Bearing RR"
{
	studio "hyattrecRR.smd"
	studio "hyattrecsnubRR.smd"
	studio "hyattopenRR.smd"
	studio "hyattopensnubRR.smd"
	studio "timkenRR.smd"
	studio "timkenrecRR.smd"
	studio "timkensnubRR.smd"
	studio "timkensnubrecRR.smd"
}
$bodygroup "Handbrake pivot for front truck"
{
	studio "no.smd"
	studio "handbrake bar.smd"
}
$bodygroup "Body"
{
	studio "motors.smd"
}
$bodygroup "Body"
{
	studio "wheels_40.smd"
}
$bodygroup "Body"
{
	studio "brakes.smd"
}
$bodygroup "Body"
{
	studio "bearing blocks.smd"
}
$bodygroup "Body"
{
	studio "framemiddle.smd"
}
$bodygroup "Body"
{
	studio "sideframeleft.smd"
}
$bodygroup "Body"
{
	studio "sideframeright.smd"
}
$bodygroup "Body"
{
	studio "springs.smd"
}
$bodygroup "Body"
{
	studio "specialsmooth.smd"
}


$surfaceprop "slipperyslime"

$contents "solid"

$illumposition 0 -1.375 6.125

$cdmaterials "models\proppertextures\"

$cbox 0 0 0 0 0 0

$bbox -55.375 -106 -26.25 58.125 106 33

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"fb3_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "fb3_physics.smd"
{
	$mass 20000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 12

}
