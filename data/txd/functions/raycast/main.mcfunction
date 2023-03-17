##########################
# Description: 
# This function casts a ray from the position and rotation of @s
##########################
# Inputs:
# txd:storage raycast.args.maxSteps (int)
##########################
# Outputs:
# txd:storage raycast.res.isHit (boolean)
# txd:storage raycast.res.position ([double, double, double])
##########################

execute anchored eyes run summon armor_stand ^ ^ ^ {Tags: ["raycast.ray"], Marker: 1b, Invisible: 1b}
execute rotated as @s as @e[tag=raycast.ray] positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=raycast.ray] at @s run function txd:raycast/ray/cast