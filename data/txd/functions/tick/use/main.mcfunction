############
# Context:
#   @s=player
#   @s's TXDRightClick matches 1..
#   assumption: @s's SelectedItem is a warped_fungus_on_a_stick
############

# Assert assumptions
execute unless entity @s[nbt={SelectedItem: {id: "minecraft:warped_fungus_on_a_stick"}}] run say "WARN: I had score in the right click scoreboard, but wasn't holding a warped_fungus_on_a_tick"


# execute if entity @s[nbt={SelectedItem: {tag: {txd: {id: "id_here"}}}}] run function txd:tick/use/id_here
scoreboard players reset @a TXDRightClick