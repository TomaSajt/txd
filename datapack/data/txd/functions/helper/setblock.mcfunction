##########################
# Description: 
# Places block at given position
##########################
# Inputs:
# txd:storage root.helper.setblock.position ([double, double, double])
##########################

function txd:make/marker/7d00
data modify entity 0-420-69-0-7d00 Pos set from storage txd:storage root.helper.setblock.position
execute at 0-420-69-0-7d00 run setblock ~ ~ ~ gold_block
kill 0-420-69-0-7d00