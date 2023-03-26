function txd:marker/make/7d00
execute on origin run function txd:std/item/get_mainhand
data modify entity 0-420-69-0-7d00 data set from storage txd:storage root.std.item.mainhand

data remove storage txd:storage root.temp

#declare tag launching_arrow
execute as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {id: "launcher_bow"}}}}] run data modify storage txd:storage root.temp set value "launching_arrow"


#declare tag homing_arrow
execute as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {id: "smart_bow"}}}}] run data modify storage txd:storage root.temp set value "homing_arrow"


#declare tag explosive_arrow
execute as 0-420-69-0-7d00 if entity @s[nbt={data: {tag: {txd: {id: "explosive_bow"}}}}] run data modify storage txd:storage root.temp set value "explosive_arrow"


#declare tag txd_arrow
execute if data storage txd:storage root.temp run data modify entity @s Tags append from storage txd:storage root.temp

kill 0-420-69-0-7d00
tag @s add txd_arrow
