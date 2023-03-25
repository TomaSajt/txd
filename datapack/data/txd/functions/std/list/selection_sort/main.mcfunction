##########################
# Description: 
# Sorts a list
##########################
# Inputs:
# txd:storage root.list.selection_sort.input (List<int>)
##########################
# Outputs:
# txd:storage root.list.selection_sort.output (List<int>)
##########################
data modify storage txd:storage root.list.selection_sort.output set value []
function txd:list/selection_sort/rec1