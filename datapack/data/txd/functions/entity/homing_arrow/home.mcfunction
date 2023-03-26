function txd:marker/make/7d00
execute positioned as 0-420-69-0-7d00 facing entity @e[tag=txd_homing_arrow_target,limit=1] feet run tp 0-420-69-0-7d00 ~ ~ ~ ~ ~
execute store result storage txd:storage root.std.math.trig.angle float -0.001 run data get entity 0-420-69-0-7d00 Rotation[0] 1000

function txd:std/math/trig

# should still be multiplied by sin or cos of Rotation[1] but it's good enough as it is
data modify entity @s Motion[0] set from storage txd:storage root.std.math.trig.sin
data modify entity @s Motion[2] set from storage txd:storage root.std.math.trig.cos

execute store result storage txd:storage root.std.math.trig.angle float -0.001 run data get entity 0-420-69-0-7d00 Rotation[1] 1000
function txd:std/math/trig
data modify entity @s Motion[1] set from storage txd:storage root.std.math.trig.sin

kill 0-420-69-0-7d00