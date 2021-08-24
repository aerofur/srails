// Created by Crowbar 0.68

$modelname "lazpack/stands/KC108.mdl"

$staticprop

$bodygroup "Body"
{
	studio "body.smd"
}
$bodygroup "Reverser"
{
	studio "reverser_removed.smd"
	studio "reverser_r.smd"
	studio "reverser_n.smd"
	studio "reverser_f.smd"
}
$bodygroup "Throttle"
{
	studio "throttle_idle.smd"
	studio "throttle_1.smd"
	studio "throttle_2.smd"
	studio "throttle_3.smd"
	studio "throttle_4.smd"
	studio "throttle_5.smd"
	studio "throttle_6.smd"
	studio "throttle_7.smd"
	studio "throttle_8.smd"
	studio "shutupshutupshutup.smd"
}
$bodygroup "Dynamic Brakes"
{
	studio "dyn_off.smd"
	studio "dyn_setup.smd"
	studio "dyn_1.smd"
	studio "dyn_2.smd"
	studio "dyn_3.smd"
	studio "dyn_4.smd"
	studio "dyn_5.smd"
	studio "dyn_6.smd"
	studio "dyn_7.smd"
	studio "dyn_8.smd"
	studio "controller_dyn_none.smd"
}
$bodygroup "Train Brake"
{
	studio "trainbrake_-75.smd"
	studio "trainbrake_-67.5.smd"
	studio "trainbrake_-60.smd"
	studio "trainbrake_-52.5.smd"
	studio "trainbrake_-45.smd"
	studio "trainbrake_-37.5.smd"
	studio "trainbrake_-30.smd"
	studio "trainbrake_-22.5.smd"
	studio "trainbrake_-15.smd"
	studio "trainbrake_-7.5.smd"
	studio "trainbrake_0.smd"
	studio "trainbrake_50.smd"
}
$bodygroup "Independent Brake"
{
	studio "indbrake_bail.smd"
	studio "indbrake_-15.smd"
	studio "indbrake_0.smd"
	studio "indbrake_15.smd"
	studio "indbrake_30.smd"
	studio "indbrake_45.smd"
	studio "indbrake_60.smd"
	studio "indbrake_75.smd"
}
$bodygroup "Horn"
{
	studio "horn_off.smd"
	studio "horn_quill.smd"
	studio "horn_full.smd"
	studio "horn_cord.smd"
}
$bodygroup "placeholder"
{
	studio "no.smd"
}
$bodygroup "Gaugen"
{
	studio "gauges_x0.smd"
	studio "gauges_x3a.smd"
	studio "gauges_x3b.smd"
	studio "gauges_x4.smd"
}
$bodygroup "Body"
{
	studio "aircolumn.smd"
}
$bodygroup "Body"
{
	studio "controller.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 5.75 0 22.281

$cdmaterials "models\proppertextures\"

$cbox 0 0 0 0 0 0

$bbox -19.25 -6.25 -0.25 19.25 17.5 44.562

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"kc108_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "kc108_physics.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
