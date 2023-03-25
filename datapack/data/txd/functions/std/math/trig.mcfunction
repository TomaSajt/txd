########
# Inputs:
#  txd:storage root.std.math.trig.angle (float)
#########
# Outputs:
#  txd:storage root.std.math.trig.sin (float) -1.0..1.0
#  txd:storage root.std.math.trig.cos (float) -1.0..1.0
#####

execute positioned 0.0 0.0 0.0 run function txd:marker/make/7d01
execute store result storage txd:storage root.std.math.trig.temp_angle float -1 run data get storage txd:storage root.std.math.trig.angle
data modify entity 0-420-69-0-7d01 Rotation[0] set from storage txd:storage root.std.math.trig.temp_angle
execute as 0-420-69-0-7d01 at @s run tp @s ^ ^ ^1
data modify storage txd:storage root.std.math.trig.cos set from entity 0-420-69-0-7d01 Pos[2]
data modify storage txd:storage root.std.math.trig.sin set from entity 0-420-69-0-7d01 Pos[0]
kill 0-420-69-0-7d01