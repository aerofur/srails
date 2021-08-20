// Created by Crowbar 0.68

$modelname "lazpack/zheneralelectrik/GE_B40-8.mdl"

$bodygroup "frame"
{
	studio "frame rearward.smd"
}
$bodygroup "Engine air intake door"
{
	studio "eng intake phase 1a.smd"
	studio "eng intake late.smd"
}
$bodygroup "Schnoz"
{
	studio "nose peaked.smd"
	studio "nose squared.smd"
	studio "no.smd"
}
$bodygroup "Dynamic brake inlet"
{
	studio "dynamics cabinent p1-p2a.smd"
	studio "dynamics cabinent p2b.smd"
}
$bodygroup "Front Anticlimber"
{
	studio "front anticlimber a.smd"
	studio "front anticlimber a mod.smd"
	studio "front anticlimber b.smd"
	studio "front anticlimber c.smd"
}
$bodygroup "Rear Anticlimber"
{
	studio "rear no anticlimber a.smd"
	studio "rear no anticlimber b.smd"
	studio "rear anticlimber a.smd"
	studio "rear anticlimber b.smd"
	studio "rear anticlimber c.smd"
}
$bodygroup "front markers"
{
	studio "front flush blanks.smd"
	studio "front raised.smd"
	studio "front flush blanks white.smd"
	studio "front raised white.smd"
	studio "no_2.smd"
}
$bodygroup "rear markers"
{
	studio "rear flush panel.smd"
	studio "rear flush blanked.smd"
	studio "rear inset applied.smd"
	studio "rear inset blanked.smd"
	studio "rear never had em.smd"
}
$bodygroup "schnoz grabs"
{
	studio "single horizontal grab.smd"
	studio "triple grabs.smd"
	studio "L grabs.smd"
	studio "single horizontal grab painted.smd"
	studio "triple grabs painted.smd"
	studio "L grabs painted.smd"
	studio "no_3.smd"
}
$bodygroup "cutbar paint"
{
	studio "cutbars full paint.smd"
	studio "cutbars partial paint.smd"
	studio "cutbars no paint.smd"
	studio "no_4.smd"
}
$bodygroup "standard grabirons"
{
	studio "grabirons unpainted.smd"
	studio "grabirons painted.smd"
	studio "grabirons unreasonable.smd"
	studio "no_5.smd"
}
$bodygroup "forward subpilot (for snowplows)"
{
	studio "forward subpilot.smd"
	studio "no_6.smd"
}
$bodygroup "rear subpilot"
{
	studio "rear subpilot.smd"
	studio "no_7.smd"
}
$bodygroup "handrail paint"
{
	studio "handrails standard paint.smd"
	studio "handrails alt paint 1.smd"
}
$bodygroup "ditchlight arrangement"
{
	studio "no_8.smd"
	studio "ditch narrow front.smd"
	studio "ditch narrow both.smd"
	studio "ditch narrow rear.smd"
	studio "ditch wide front.smd"
	studio "ditch wide both.smd"
	studio "ditch wide rear.smd"
}
$bodygroup "numberboard face paint"
{
	studio "numberboard acrylic.smd"
	studio "numberboard white.smd"
}
$bodygroup "expand_stacc"
{
	studio "no_9.smd"
	studio "exhaust extension.smd"
}
$bodygroup "nose headlight"
{
	studio "no_10.smd"
	studio "nose headlight.smd"
}
$bodygroup "tick 4 use anims,,,"
{
	studio "animables.smd"
	studio "no_11.smd"
}
$bodygroup "frame"
{
	studio "frame frontright.smd"
}
$bodygroup "frame"
{
	studio "frame rearright.smd"
}
$bodygroup "subframe"
{
	studio "couplers.smd"
}
$bodygroup "subframe"
{
	studio "stepswells.smd"
}
$bodygroup "subframe"
{
	studio "pilots.smd"
}
$bodygroup "subframe"
{
	studio "traction cables.smd"
}
$bodygroup "subframe"
{
	studio "fuel tank.smd"
}
$bodygroup "cab"
{
	studio "cab.smd"
}
$bodygroup "hood"
{
	studio "equipment blower.smd"
}
$bodygroup "hood"
{
	studio "engine room a.smd"
}
$bodygroup "hood"
{
	studio "engine room b.smd"
}
$bodygroup "hood"
{
	studio "engine room hinges lmao.smd"
}
$bodygroup "hood"
{
	studio "turbo room.smd"
}
$bodygroup "hood"
{
	studio "radiator outside left.smd"
}
$bodygroup "hood"
{
	studio "radiator outside right.smd"
}
$bodygroup "hood"
{
	studio "radiator inside.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 52.812

$mostlyopaque

$cdmaterials "models\proppertextures\"
$cdmaterials "models\trakpak3_common\signals\generic\"
$cdmaterials "models\lazpack\"

$cbox 0 0 0 0 0 0

$bbox -401.624 -62.299 -37 401.624 62.299 142.625

$definebone "blender_implicit" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "root" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "front door" "root" -58.62505 81.833473 -298.125 0 0 0 0 0 0 0 0 0
$definebone "front handle" "front door" 18.25005 -0.458473 -2.758514 0 179.999978 89.999982 0 0 0 0 0 0
$definebone "front latch" "front door" 15.343525 -2.222244 -0.157562 0 -89.999982 0 0 0 0 0 0 0
$definebone "rear door" "root" 58.625061 81.799057 -212.375 0 0 0 0 0 0 0 0 0
$definebone "rear handle" "rear door" -18.250061 -0.424057 2.629852 0 -89.999982 -89.999982 0 0 0 0 0 0
$definebone "rear latch" "rear door" -14.968586 -0.387016 -0.183334 -89.999982 89.999982 0 0 0 0 0 0 0
$definebone "forward window left" "root" -58.125084 88.089958 -255.786896 0 0 -89.999982 0 0 0 0 0 0
$definebone "latch left" "forward window left" 0.437584 0.213104 3.910057 89.999982 -89.999982 0 0 0 0 0 0 0
$definebone "rearward window left" "root" -58.125084 88.089958 -254.945374 0 89.999982 89.999982 0 0 0 0 0 0
$definebone "forward window" "root" 57.897755 88.089958 -255.786896 0 0 -89.999982 0 0 0 0 0 0
$definebone "latch right" "forward window" -0.905792 0.213104 3.910057 89.999982 -89.999982 0 0 0 0 0 0 0
$definebone "rearward window" "root" 57.897755 88.089958 -254.945374 0 89.999982 89.999982 0 0 0 0 0 0
$definebone "radiator fan" "root" 0 101.041084 271.000031 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"ge_b40-8_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ge_b40-8_physics.smd"
{
	$mass 20000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 35

}
