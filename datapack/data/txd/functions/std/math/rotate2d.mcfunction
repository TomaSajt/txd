execute store result score $x txd_global run data get storage txd:storage root.std.math.rotate2d.input.x 1000
execute store result score $z txd_global run data get storage txd:storage root.std.math.rotate2d.input.z 1000
data modify storage txd:storage root.std.math.mctrig.angle set from storage txd:storage root.std.math.rotate2d.input.angle
function txd:std/math/mctrig
execute store result score $mctrig_cos txd_global run data get storage txd:storage root.std.math.mctrig.cos 1000
execute store result score $mctrig_sin txd_global run data get storage txd:storage root.std.math.mctrig.sin 1000


scoreboard players operation $temp txd_global = $z txd_global
scoreboard players operation $temp txd_global *= $mctrig_cos txd_global

scoreboard players operation $x' txd_global = $x txd_global
scoreboard players operation $x' txd_global *= $mctrig_sin txd_global

scoreboard players operation $x' txd_global -= $temp txd_global
execute store result storage txd:storage root.std.math.rotate2d.output.x double 0.000001 run scoreboard players get $x' txd_global


scoreboard players operation $temp txd_global = $z txd_global
scoreboard players operation $temp txd_global *= $mctrig_sin txd_global

scoreboard players operation $z' txd_global = $x txd_global
scoreboard players operation $z' txd_global *= $mctrig_cos txd_global

scoreboard players operation $z' txd_global += $temp txd_global


execute store result storage txd:storage root.std.math.rotate2d.output.z double 0.000001 run scoreboard players get $z' txd_global
