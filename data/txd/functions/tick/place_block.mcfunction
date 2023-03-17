summon armor_stand 0 0 0 {Tags: ["placer"], Marker: 1b}
data modify entity @e[tag=placer,limit=1] Pos set from storage txd:storage raycast.res.position
execute at @e[tag=placer] run setblock ~ ~ ~ gold_block
kill @e[tag=placer]