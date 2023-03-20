##################
# Inputs:
#  txd:storage root.mandelbrot.z  -  List<float,2>
#  txd:storage root.mandelbrot.c  -  List<float,2>
###########

execute store result score $mb_zx TXDGlobal run data get storage txd:storage root.mandelbrot.z[0] 1000
execute store result score $mb_zy TXDGlobal run data get storage txd:storage root.mandelbrot.z[1] 1000
execute store result score $mb_cx TXDGlobal run data get storage txd:storage root.mandelbrot.c[0] 1000
execute store result score $mb_cy TXDGlobal run data get storage txd:storage root.mandelbrot.c[1] 1000
scoreboard players set $mb_max_iters TXDGlobal 1000
function txd:mandelbrot/run
execute if score $mb_iters TXDGlobal = $mb_max_iters TXDGlobal run tellraw @s "Inside"
execute unless score $mb_iters TXDGlobal = $mb_max_iters TXDGlobal run tellraw @s "Outside"