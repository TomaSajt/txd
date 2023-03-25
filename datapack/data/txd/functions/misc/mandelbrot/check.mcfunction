##################
# Inputs:
#  txd:storage root.mandelbrot.z  -  List<float,2>
#  txd:storage root.mandelbrot.c  -  List<float,2>
###########

execute store result score $mb_zx txd_global run data get storage txd:storage root.mandelbrot.z[0] 1000
execute store result score $mb_zy txd_global run data get storage txd:storage root.mandelbrot.z[1] 1000
execute store result score $mb_cx txd_global run data get storage txd:storage root.mandelbrot.c[0] 1000
execute store result score $mb_cy txd_global run data get storage txd:storage root.mandelbrot.c[1] 1000
scoreboard players set $mb_max_iters txd_global 1000
function txd:mandelbrot/run
execute if score $mb_iters txd_global = $mb_max_iters txd_global run tellraw @s "Inside"
execute unless score $mb_iters txd_global = $mb_max_iters txd_global run tellraw @s "Outside"