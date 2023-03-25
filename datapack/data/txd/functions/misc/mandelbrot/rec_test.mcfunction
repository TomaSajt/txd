scoreboard players operation $mb_1000zx^2 txd_global = $mb_zx txd_global
scoreboard players operation $mb_1000zx^2 txd_global *= $mb_zx txd_global

scoreboard players operation $mb_1000zy^2 txd_global = $mb_zy txd_global
scoreboard players operation $mb_1000zy^2 txd_global *= $mb_zy txd_global

scoreboard players operation $mb_1000zx^2+1000zy^2 txd_global = $mb_1000zx^2 txd_global
scoreboard players operation $mb_1000zx^2+1000zy^2 txd_global += $mb_1000zy^2 txd_global

execute if score $mb_1000zx^2+1000zy^2 txd_global matches ..4000000 if score $mb_iters txd_global < $mb_max_iters txd_global run function txd:mandelbrot/rec
