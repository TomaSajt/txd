# @s is player
# assumption: @s's SelectedItem is a warped_fungus_on_a_stick

# Assert assumptions
execute unless entity @s[nbt={SelectedItem: {id: "minecraft:warped_fungus_on_a_stick"}}] run say "WARN: I had score in the right click scoreboard, but wasn't holding a warped_fungus_on_a_tick"

execute if entity @s[nbt={SelectedItem: {tag: {txd: {id: "damager"}}}}] run function txd:item/damager/on_use
execute if entity @s[nbt={SelectedItem: {tag: {txd: {id: "teleporter"}}}}] run function txd:item/teleporter/on_use
