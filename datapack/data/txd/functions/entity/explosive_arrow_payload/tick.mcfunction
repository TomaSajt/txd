scoreboard players set $has_vehicle txd_global 0
execute on vehicle run scoreboard players set $has_vehicle txd_global 1
execute if score $has_vehicle txd_global matches 0 run function txd:entity/explosive_arrow_payload/explode
