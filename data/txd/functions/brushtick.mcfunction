advancement revoke @s only txd:brush_use
data modify storage txd:storage raycast.args.maxSteps set value 1000
function txd:raycast/main
execute store result score hit TXDGlobal run data get storage txd:storage raycast.res.isHit
execute if score hit TXDGlobal matches 1 run function txd:tick/place_block