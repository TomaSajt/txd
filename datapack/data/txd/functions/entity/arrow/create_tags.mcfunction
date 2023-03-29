function txd:marker/make/7d00

execute on origin run function txd:std/item/get_mainhand
# only copy if origin exists
execute on origin run data modify entity 0-420-69-0-7d00 data set from storage txd:storage root.std.item.mainhand

data remove storage txd:storage root.temp

#declare tag launching_arrow
execute store success score $temp txd_global as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {projectile_modifiers: {launching: 1b}}}}}]
execute if score $temp txd_global matches 1 run tag @s add launching_arrow

#declare tag homing_arrow
execute store success score $temp txd_global as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {projectile_modifiers: {homing: 1b}}}}}]
execute if score $temp txd_global matches 1 run tag @s add homing_arrow

#declare tag explosive_arrow
execute store success score $temp txd_global as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {projectile_modifiers: {explosive: 1b}}}}}]
execute if score $temp txd_global matches 1 run tag @s add explosive_arrow


kill 0-420-69-0-7d00
tag @s add txd_arrow
