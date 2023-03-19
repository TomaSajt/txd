##########################
# Description: 
# Reverses an array
##########################
# Inputs:
# txd:storage root.array.reverse.input (T[])
##########################
# Outputs:
# txd:storage root.array.reverse.output (T[])
##########################


data modify storage txd:storage root.array.reverse.output set value []
function txd:array/reverse/rec_test
