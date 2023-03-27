function txd:marker/make/7d00
execute positioned as 0-420-69-0-7d00 facing entity @e[tag=txd_homing_arrow_target,limit=1] feet run tp 0-420-69-0-7d00 ~ ~ ~ ~ ~


data modify storage txd:storage root.std.math.mctrig.angle set from entity 0-420-69-0-7d00 Rotation[1]

function txd:std/math/mctrig

data modify entity @s Motion[1] set from storage txd:storage root.std.math.mctrig.cos

execute store result score $mctrig_sin txd_global run data get storage txd:storage root.std.math.mctrig.sin 1000


data modify storage txd:storage root.std.math.mctrig.angle set from entity 0-420-69-0-7d00 Rotation[0]

function txd:std/math/mctrig

execute store result score $temp txd_global run data get storage txd:storage root.std.math.mctrig.cos 1000
scoreboard players operation $temp txd_global *= $mctrig_sin txd_global
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get $temp txd_global

execute store result score $temp txd_global run data get storage txd:storage root.std.math.mctrig.sin 1000
scoreboard players operation $temp txd_global *= $mctrig_sin txd_global
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get $temp txd_global

kill 0-420-69-0-7d00