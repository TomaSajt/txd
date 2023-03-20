advancement revoke @s only txd:brush_use
kill @e[type=eye_of_ender,distance=..2]
data modify storage txd:storage root.raycast.args.maxSteps set value 100000
function txd:raycast/main
execute if score $raycast_hit TXDGlobal matches 1 run function txd:tick/player/use/eoe/brush/setblock
