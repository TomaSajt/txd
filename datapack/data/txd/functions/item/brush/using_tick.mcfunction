advancement revoke @s only txd:use_brush
kill @e[type=eye_of_ender,distance=..2]
data modify storage txd:storage root.std.raycast.args.maxSteps set value 100000
function txd:std/raycast/main
execute if score $raycast_hit txd_global matches 1 run function txd:item/brush/setblock
