advancement revoke @s only txd:brush_use
kill @e[type=eye_of_ender,distance=..2]
data modify storage txd:storage root.raycast.args.maxSteps set value 100000
function txd:raycast/main
execute store result score hit TXDGlobal run data get storage txd:storage root.raycast.res.isHit
execute if score hit TXDGlobal matches 1 run function txd:tick/place_block