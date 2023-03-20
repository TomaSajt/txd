##########################
# Description: 
# Reverses a list
##########################
# Inputs:
# txd:storage root.list.reverse.input (T[])
##########################
# Outputs:
# txd:storage root.list.reverse.output (T[])
##########################


data modify storage txd:storage root.list.reverse.output set value []
function txd:list/reverse/rec_test
