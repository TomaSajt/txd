##########################
# Description: 
# This function casts a ray from the position and rotation of @s
##########################
# Inputs:
# txd:storage root.raycast.args.maxSteps (int)
##########################
# Outputs:
# txd:storage root.raycast.res.isHit (boolean)
# txd:storage root.raycast.res.position ([double, double, double])
##########################

execute anchored eyes run summon marker ^ ^ ^ {Tags: ["raycast.ray"]}
execute rotated as @s as @e[type=marker,tag=raycast.ray] positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=raycast.ray] at @s run function txd:raycast/ray/cast