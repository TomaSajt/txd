data modify storage txd:storage root.list.selection_sort.currMin set from storage txd:storage root.list.selection_sort.input[0]
data remove storage txd:storage root.list.selection_sort.input[0]
execute store result score $curr_min txd_global run data get storage txd:storage root.list.selection_sort.currMin

# Gets the length
execute store result score $cycles txd_global run data get storage txd:storage root.list.selection_sort.input
function txd:list/selection_sort/rec2_test


data modify storage txd:storage root.list.selection_sort.output append from storage txd:storage root.list.selection_sort.currMin
function txd:list/selection_sort/rec1_test