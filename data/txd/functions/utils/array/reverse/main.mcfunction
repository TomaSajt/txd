##########################
# Description: 
# Reverses an array
##########################
# Inputs:
# txd:storage root.array.reverse.args.input (T[])
##########################
# Outputs:
# txd:storage root.raycast.res.output (T[])
##########################


data modify storage txd:storage root.array.reverse.output set value []
function txd:utils/array/reverse/recurse
