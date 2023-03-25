data modify storage txd:storage root.tick.player.pos set value [0, 0, 0]
execute store result storage txd:storage root.tick.player.pos[0] int 1 run data get entity @s Pos[0]
execute store result storage txd:storage root.tick.player.pos[1] int 1 run data get entity @s Pos[1]
execute store result storage txd:storage root.tick.player.pos[2] int 1 run data get entity @s Pos[2]


execute store result score $player_yaw txd_global run data get entity @s Rotation[0] 10
execute if score $player_yaw txd_global matches -1800..-1576 run data modify storage txd:storage root.tick.player.dir set value "N"
execute if score $player_yaw txd_global matches -1575..-1126 run data modify storage txd:storage root.tick.player.dir set value "NE"
execute if score $player_yaw txd_global matches -1125..-676 run data modify storage txd:storage root.tick.player.dir set value "E"
execute if score $player_yaw txd_global matches -675..226 run data modify storage txd:storage root.tick.player.dir set value "SE"
execute if score $player_yaw txd_global matches -225..224 run data modify storage txd:storage root.tick.player.dir set value "S"
execute if score $player_yaw txd_global matches 225..674 run data modify storage txd:storage root.tick.player.dir set value "SW"
execute if score $player_yaw txd_global matches 675..1124 run data modify storage txd:storage root.tick.player.dir set value "W"
execute if score $player_yaw txd_global matches 1125..1574 run data modify storage txd:storage root.tick.player.dir set value "NW"
execute if score $player_yaw txd_global matches 1575..1799 run data modify storage txd:storage root.tick.player.dir set value "N"

title @s actionbar [{"color":"aqua","nbt":"root.tick.player.pos[0]","storage": "txd:storage"}, " ", {"nbt":"root.tick.player.pos[1]","storage": "txd:storage"}, " ", {"nbt":"root.tick.player.pos[2]","storage": "txd:storage"}, {"color":"light_purple", "text":" | "}, {"color": "gold", "nbt":"root.tick.player.dir","storage": "txd:storage"}]
