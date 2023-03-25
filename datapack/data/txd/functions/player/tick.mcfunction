
execute if score @s txd_used_wfoas matches 1.. run function txd:item/warped_fungus_on_a_stick/on_use
scoreboard players reset @s txd_used_wfoas

function txd:player/update_actionbar