data modify storage txd:storage root.list.selection_sort.candidateMin set from storage txd:storage root.list.selection_sort.input[0]
execute store result score $candidate_min txd_global run data get storage txd:storage root.list.selection_sort.candidateMin

# Set new min to first element of list, and put the old min in place of the new mins original place
execute if score $curr_min txd_global > $candidate_min txd_global run data modify storage txd:storage root.list.selection_sort.input[0] set from storage txd:storage root.list.selection_sort.currMin
execute if score $curr_min txd_global > $candidate_min txd_global run data modify storage txd:storage root.list.selection_sort.currMin set from storage txd:storage root.list.selection_sort.candidateMin
execute if score $curr_min txd_global > $candidate_min txd_global run scoreboard players operation $curr_min txd_global = $candidate_min txd_global

data modify storage txd:storage root.list.selection_sort.input append from storage txd:storage root.list.selection_sort.input[0]
data remove storage txd:storage root.list.selection_sort.input[0]
scoreboard players remove $cycles txd_global 1
tellraw @a "cycle"

function txd:list/selection_sort/rec2_test