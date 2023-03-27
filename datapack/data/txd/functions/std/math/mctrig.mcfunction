########
# Inputs:
#  txd:storage root.std.math.mctrig.angle (float)
#########
# Outputs:
#  txd:storage root.std.math.mctrig.sin (float) -1.0..1.0
#  txd:storage root.std.math.mctrig.cos (float) -1.0..1.0
#####

execute positioned 0.0 0.0 0.0 run function txd:marker/make/7d01
data modify entity 0-420-69-0-7d01 Rotation[0] set from storage txd:storage root.std.math.mctrig.angle
execute as 0-420-69-0-7d01 at @s run tp @s ^ ^ ^1
data modify storage txd:storage root.std.math.mctrig.cos set from entity 0-420-69-0-7d01 Pos[0]
data modify storage txd:storage root.std.math.mctrig.sin set from entity 0-420-69-0-7d01 Pos[2]
kill 0-420-69-0-7d01