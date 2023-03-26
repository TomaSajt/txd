execute on origin run tag @s add origin
execute as @e[type=!#txd:homing_immune,tag=!origin,distance=..20] run tag @s add txd_homing_arrow_target_candidate
execute as @e[tag=txd_homing_arrow_target_candidate,limit=1,sort=nearest] run tag @s add txd_homing_arrow_target
execute as @e[tag=txd_homing_arrow_target_candidate] run tag @s remove txd_homing_arrow_target_candidate

execute if entity @e[tag=txd_homing_arrow_target] run function txd:entity/homing_arrow/home

execute as @e[tag=txd_homing_arrow_target] run tag @s remove txd_homing_arrow_target
execute on origin run tag @s remove origin

execute if entity @s[nbt={inGround: 1b}] run tag @s remove homing_arrow