##########################
# Description: 
# This function casts a ray from the position and rotation of @s
##########################
# Inputs:
# txd:storage root.std.raycast.args.maxSteps (int)
##########################
# Outputs:
# score $raycast_hit txd_global 0/1
# txd:storage root.std.raycast.res.position ([double, double, double])
##########################

execute anchored eyes run function txd:marker/make/7d00
execute rotated as @s positioned as 0-420-69-0-7d00 run tp 0-420-69-0-7d00 ~ ~ ~ ~ ~

execute store result score $ray_rec_countdown txd_global run data get storage txd:storage root.std.raycast.args.maxSteps

execute as 0-420-69-0-7d00 at @s run function txd:std/raycast/rec_test
execute at 0-420-69-0-7d00 store success score $raycast_hit txd_global unless block ~ ~ ~ #txd:raycast_passable
data modify storage txd:storage root.std.raycast.res.position set from entity 0-420-69-0-7d00 Pos
kill 0-420-69-0-7d00