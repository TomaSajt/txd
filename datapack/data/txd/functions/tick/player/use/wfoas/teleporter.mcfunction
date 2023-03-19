data modify storage txd:storage root.raycast.args.maxSteps set value 1000
function txd:raycast/main

summon marker 0 0 0 {Tags: ["teleporter_target"]}
tag @s add teleported_player

data modify entity @e[type=marker,tag=teleporter_target,limit=1] Pos set from storage txd:storage root.raycast.res.position
execute as @e[type=marker,tag=teleporter_target,limit=1] at @s facing entity @p[tag=teleported_player] eyes run tp @s ^ ^ ^0.5
execute positioned as @e[type=marker,tag=teleporter_target,limit=1] run tp @s ~ ~ ~ ~ ~

tag @s remove teleported_player
kill @e[type=marker,tag=teleporter_target]

