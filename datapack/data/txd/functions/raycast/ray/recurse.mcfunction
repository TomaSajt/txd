scoreboard players add rec TXDGlobal 1
execute run tp @s ^ ^ ^0.04
execute at @s if score rec TXDGlobal <= rec_lim TXDGlobal if block ~ ~ ~ #txd:raycast_passable run function txd:raycast/ray/recurse