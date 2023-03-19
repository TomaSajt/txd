##########################
# Description: 
# Sorts an array
##########################
# Inputs:
# txd:storage root.array.y_sort.input (T[]) - where T is numeric and between -20000000 and 20000000
##########################
# Outputs:
# txd:storage root.array.y_sort.output (T[])
##########################

kill @e[type=marker,tag=y_sort]

function txd:array/y_sort/rec_test
data modify storage txd:storage root.array.y_sort.output set value []
execute positioned 0 -20000000 0 run execute as @e[sort=nearest] run data modify storage txd:storage root.array.y_sort.output append from entity @s data.y_sort_data
kill @e[type=marker,tag=y_sort]
