tag @e[type=#arrows,tag=!txd_clone_done] add txd_to_be_cloned

data modify storage txd:storage root.std.math.rotate2d.input.angle set value -20.0f
execute as @e[tag=txd_to_be_cloned] at @s run function txd:entity/arrow/clone

data modify storage txd:storage root.std.math.rotate2d.input.angle set value -10.0f
execute as @e[tag=txd_to_be_cloned] at @s run function txd:entity/arrow/clone

data modify storage txd:storage root.std.math.rotate2d.input.angle set value 10.0f
execute as @e[tag=txd_to_be_cloned] at @s run function txd:entity/arrow/clone

data modify storage txd:storage root.std.math.rotate2d.input.angle set value 20.0f
execute as @e[tag=txd_to_be_cloned] at @s run function txd:entity/arrow/clone

tag @e[type=#arrows,tag=txd_to_be_cloned] add txd_clone_done
tag @e[type=#arrows,tag=txd_to_be_cloned] add txd_original_arrow
tag @e[type=#arrows,tag=txd_to_be_cloned] remove txd_to_be_cloned