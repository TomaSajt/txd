summon marker 0 0 0 {Tags: ["y_sort", "current"]}
execute store result storage txd:storage root.list.y_sort.pos_temp double 1 run data get storage txd:storage root.list.y_sort.input[0]
execute as @e[type=marker,tag=current,tag=y_sort] run data modify entity @s Pos[1] set from storage txd:storage root.list.y_sort.pos_temp
execute as @e[type=marker,tag=current,tag=y_sort] run data modify entity @s data.y_sort_data set from storage txd:storage root.list.y_sort.input[0]
data remove storage txd:storage root.list.y_sort.input[0]
tag @e[type=marker,tag=y_sort] remove current
function txd:list/y_sort/rec_test
