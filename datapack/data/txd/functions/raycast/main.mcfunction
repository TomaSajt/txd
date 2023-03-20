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
execute rotated as @s positioned as 0-420-69-0-7d00 run tp 0-420-69-0-7d00 ~ ~ ~ ~ ~

execute store result score $ray_rec_countdown TXDGlobal run data get storage txd:storage root.raycast.args.maxSteps

execute as 0-420-69-0-7d00 at @s run function txd:raycast/rec_test
execute at 0-420-69-0-7d00 store success storage txd:storage root.raycast.res.isHit byte 1 unless block ~ ~ ~ #txd:raycast_passable
data modify storage txd:storage root.raycast.res.position set from entity 0-420-69-0-7d00 Pos
kill 0-420-69-0-7d00