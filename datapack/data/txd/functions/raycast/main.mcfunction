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

execute anchored eyes run function txd:make/marker/7d00
execute rotated as @s as 0-420-69-0-7d00 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as 0-420-69-0-7d00 at @s run function txd:raycast/ray/cast