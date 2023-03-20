##################
# Inputs:
# score $mb_zx TXDGlobal
# score $mb_zy TXDGlobal
# score $mb_cx TXDGlobal
# score $mb_cy TXDGlobal
# score $mb_max_iters TXDGlobal
################
# Output:
#  score $mb_iters TXDGlobal
#################

scoreboard players set $mb_iters TXDGlobal 0
function txd:mandelbrot/rec_test