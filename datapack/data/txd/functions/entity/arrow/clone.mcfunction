execute if entity @s[type=arrow] run summon minecraft:arrow ~ ~ ~ {Tags: ["txd_current_clone"]}
execute if entity @s[type=spectral_arrow] run summon minecraft:spectral_arrow ~ ~ ~ {Tags: ["txd_current_clone"]}


execute if entity @s[type=arrow] run function txd:std/nbt/clone/arrow
execute if entity @s[type=spectral_arrow] run function txd:std/nbt/clone/spectral_arrow

data modify storage txd:storage root.std.math.rotate2d.input.x set from entity @s Motion[0]
data modify storage txd:storage root.std.math.rotate2d.input.z set from entity @s Motion[2]
function txd:std/math/rotate2d
data modify entity @e[tag=txd_current_clone,limit=1] Motion[0] set from storage txd:storage root.std.math.rotate2d.output.x
data modify entity @e[tag=txd_current_clone,limit=1] Motion[2] set from storage txd:storage root.std.math.rotate2d.output.z
data modify entity @e[tag=txd_current_clone,limit=1] pickup set value 2b

tag @e[tag=txd_current_clone,limit=1] add txd_clone_done
tag @e[tag=txd_current_clone,limit=1] remove txd_current_clone