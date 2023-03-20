execute store result score $rec_lim TXDGlobal run data get storage txd:storage root.raycast.args.maxSteps
scoreboard players set $rec TXDGlobal 0
function txd:raycast/ray/recurse
execute at @s store success storage txd:storage root.raycast.res.isHit byte 1 unless block ~ ~ ~ #txd:raycast_passable
data modify storage txd:storage root.raycast.res.position set from entity @s Pos
kill @s