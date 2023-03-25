execute unless entity @s[tag=txd_arrow] run function txd:entity/arrow/create_tags

execute if entity @s[tag=launching_arrow] run function txd:entity/launching_arrow/tick
execute if entity @s[tag=homing_arrow] run function txd:entity/homing_arrow/tick