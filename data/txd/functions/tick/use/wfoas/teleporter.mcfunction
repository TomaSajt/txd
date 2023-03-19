data modify storage txd:storage root.raycast.args.maxSteps set value 1000
function txd:raycast/main

summon armor_stand 0 0 0 {Marker: 1b, Tags: ["teleporter_target"]}
tag @s add teleported_player

data modify entity @e[tag=teleporter_target,limit=1] Pos set from storage txd:storage root.raycast.res.position
execute as @e[tag=teleporter_target,limit=1] at @s facing entity @p[tag=teleported_player] eyes run tp @s ^ ^ ^1
execute positioned as @e[tag=teleporter_target,limit=1] run tp @s ~ ~ ~ ~ ~

tag @s remove teleported_player
kill @e[tag=teleporter_target]

