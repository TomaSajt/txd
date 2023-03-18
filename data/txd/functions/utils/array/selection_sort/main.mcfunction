##########################
# Description: 
# Reverses an array
##########################
# Inputs:
# txd:storage root.array.selection_sort.input (int[])
##########################
# Outputs:
# txd:storage root.array.selection_sort.output (int[])
##########################
data modify storage txd:storage root.array.selection_sort.output set value []
function txd:utils/array/selection_sort/rec1