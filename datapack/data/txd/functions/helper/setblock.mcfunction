##########################
# Description: 
# Places block at given position
##########################
# Inputs:
# txd:storage root.helper.setblock.position ([double, double, double])
##########################

summon marker 0 0 0 {Tags: ["block_setter"]}
data modify entity @e[type=marker,tag=block_setter,limit=1] Pos set from storage txd:storage root.helper.setblock.position
execute at @e[type=marker,tag=block_setter] run setblock ~ ~ ~ gold_block
kill @e[type=marker,tag=block_setter]