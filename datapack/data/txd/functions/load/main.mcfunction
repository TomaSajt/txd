#declare storage txd:storage

data remove storage txd:storage root
scoreboard objectives remove TXDGlobal
scoreboard objectives remove TXDRightClick

scoreboard objectives add TXDGlobal dummy
scoreboard objectives add TXDRightClick used:warped_fungus_on_a_stick

#declare score_holder $1000
scoreboard players set $1000 TXDGlobal 1000

function txd:load/box

tellraw @a {"text": "TXD Loaded!", "color": "gold"}