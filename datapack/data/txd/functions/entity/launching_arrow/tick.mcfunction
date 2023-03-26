execute unless entity @s[tag=been_ridden] run function txd:entity/launching_arrow/ride

# Don't kill if shot from survival mode without infinity
execute if entity @s[nbt={inGround: 1b},nbt=!{pickup: 1b}] run kill @s