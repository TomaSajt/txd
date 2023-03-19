##########################
# Description: 
# Places block at given position
##########################
# Inputs:
# txd:storage root.helper.setblock.position ([double, double, double])
##########################

summon armor_stand 0 0 0 {Tags: ["block_setter"], Marker: 1b}
data modify entity @e[tag=block_setter,limit=1] Pos set from storage txd:storage root.helper.setblock.position
execute at @e[tag=block_setter] run setblock ~ ~ ~ gold_block
kill @e[tag=block_setter]