data modify storage txd:storage root.raycast.args.maxSteps set value 1000
function txd:raycast/main

function txd:make/marker/7d00
tag @s add teleported_player

data modify entity 0-420-69-0-7d00 Pos set from storage txd:storage root.raycast.res.position
execute as 0-420-69-0-7d00 at @s facing entity @p[tag=teleported_player] eyes run tp @s ^ ^ ^0.5
execute positioned as 0-420-69-0-7d00 run tp @s ~ ~ ~ ~ ~

tag @s remove teleported_player
kill 0-420-69-0-7d00

