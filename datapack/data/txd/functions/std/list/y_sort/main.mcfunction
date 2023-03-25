##########################
# Description: 
# Sorts a list
##########################
# Inputs:
# txd:storage root.list.y_sort.input (List<T>) - where T is numeric and between -20000000 and 20000000
##########################
# Outputs:
# txd:storage root.list.y_sort.output (List<T>)
##########################

kill @e[type=marker,tag=y_sort]

function txd:list/y_sort/rec_test
data modify storage txd:storage root.list.y_sort.output set value []
execute positioned 0 -20000000 0 run execute as @e[sort=nearest] run data modify storage txd:storage root.list.y_sort.output append from entity @s data.y_sort_data
kill @e[type=marker,tag=y_sort]
