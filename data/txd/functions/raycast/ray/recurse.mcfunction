scoreboard players add rec TXDGlobal 1
execute run tp @s ^ ^ ^0.04
execute at @s if score rec TXDGlobal <= rec_lim TXDGlobal if block ~ ~ ~ #txd:airs run function txd:raycast/ray/recurse