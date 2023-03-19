data modify storage txd:storage root.array.selection_sort.candidateMin set from storage txd:storage root.array.selection_sort.input[0]
execute store result score candidate_min TXDGlobal run data get storage txd:storage root.array.selection_sort.candidateMin

# Set new min to first element of array, and put the old min in place of the new mins original place
execute if score curr_min TXDGlobal > candidate_min TXDGlobal run data modify storage txd:storage root.array.selection_sort.input[0] set from storage txd:storage root.array.selection_sort.currMin
execute if score curr_min TXDGlobal > candidate_min TXDGlobal run data modify storage txd:storage root.array.selection_sort.currMin set from storage txd:storage root.array.selection_sort.candidateMin
execute if score curr_min TXDGlobal > candidate_min TXDGlobal run scoreboard players operation curr_min TXDGlobal = candidate_min TXDGlobal

data modify storage txd:storage root.array.selection_sort.input append from storage txd:storage root.array.selection_sort.input[0]
data remove storage txd:storage root.array.selection_sort.input[0]
scoreboard players remove cycles TXDGlobal 1
tellraw @a "cycle"

function txd:utils/array/selection_sort/rec2_test