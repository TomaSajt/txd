data remove storage txd:storage root.temp

#declare tag launching_arrow
execute on origin if entity @s[nbt={SelectedItem: {tag: {txd: {id: "self_launcher"}}}}] run data modify storage txd:storage root.temp set value "launching_arrow"

#declare tag homing_arrow
execute on origin if entity @s[nbt={SelectedItem: {tag: {txd: {id: "smart_bow"}}}}] run data modify storage txd:storage root.temp set value "homing_arrow"

#declare tag txd_arrow
execute if data storage txd:storage root.temp run data modify entity @s Tags append from storage txd:storage root.temp
tag @s add txd_arrow
