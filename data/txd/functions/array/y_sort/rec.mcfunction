summon armor_stand 0 0 0 {Marker: 1b, Invisible: 1b, Tags: ["y_sort", "current"], ArmorItems: [{id: "minecraft:knowledge_book", Count: 1b, tag: {}}, {}, {}, {}]}
execute store result storage txd:storage root.array.y_sort.pos_temp double 1 run data get storage txd:storage root.array.y_sort.input[0]
execute as @e[tag=current,tag=y_sort] run data modify entity @s Pos[1] set from storage txd:storage root.array.y_sort.pos_temp
execute as @e[tag=current,tag=y_sort] run data modify entity @s ArmorItems[0].tag.txd.y_sort_data set from storage txd:storage root.array.y_sort.input[0]
data remove storage txd:storage root.array.y_sort.input[0]
tag @e[tag=y_sort] remove current
function txd:array/y_sort/rec_test
