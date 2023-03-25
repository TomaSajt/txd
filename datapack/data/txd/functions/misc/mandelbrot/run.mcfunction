##################
# Inputs:
# score $mb_zx txd_global
# score $mb_zy txd_global
# score $mb_cx txd_global
# score $mb_cy txd_global
# score $mb_max_iters txd_global
################
# Output:
#  score $mb_iters txd_global
#################

scoreboard players set $mb_iters txd_global 0
function txd:mandelbrot/rec_test