execute unless entity @s[tag=been_ridden] run function txd:entity/explosive_arrow/ride


# Arrows are dumb: they have their rotations reversed, so this spawns a temporary entity with the opposite rotations
execute anchored eyes run function txd:marker/make/7d00
execute store result entity 0-420-69-0-7d00 Rotation[0] float -0.0001 run data get entity @s Rotation[0] 10000
execute store result entity 0-420-69-0-7d00 Rotation[1] float -0.0001 run data get entity @s Rotation[1] 10000
execute at 0-420-69-0-7d00 run particle minecraft:smoke ^ ^ ^-1 0.1 0.1 0.1 0.001 3
kill 0-420-69-0-7d00



execute if entity @s[nbt={inGround: 1b}] run kill @s