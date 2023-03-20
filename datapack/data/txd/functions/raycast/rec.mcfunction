scoreboard players remove $ray_rec_countdown TXDGlobal 1
execute run tp @s ^ ^ ^0.04
execute at @s if block ~ ~ ~ #txd:raycast_passable run function txd:raycast/rec_test