execute if entity @s[type=player] run function txd:entity/player/tick
execute if entity @s[type=#minecraft:arrows] run function txd:entity/arrow/tick
execute if entity @s[type=marker,tag=txd_explosive_arrow_payload] run function txd:entity/explosive_arrow_payload/tick