execute on origin run tag @s add txd_origin
ride @e[tag=txd_origin,limit=1] dismount
ride @e[tag=txd_origin,limit=1] mount @s
execute on origin run tag @s remove txd_origin
tag @s add txd_been_ridden