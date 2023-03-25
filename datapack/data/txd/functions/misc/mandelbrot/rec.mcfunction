scoreboard players operation $mb_zx^2-zy^2+cx txd_global = $mb_1000zx^2 txd_global
scoreboard players operation $mb_zx^2-zy^2+cx txd_global -= $mb_1000zy^2 txd_global
scoreboard players operation $mb_zx^2-zy^2+cx txd_global /= $1000 txd_global
scoreboard players operation $mb_zx^2-zy^2+cx txd_global += $mb_cx txd_global

scoreboard players set $mb_2zxzy+cy txd_global 2
scoreboard players operation $mb_2zxzy+cy txd_global *= $mb_zx txd_global
scoreboard players operation $mb_2zxzy+cy txd_global *= $mb_zy txd_global
scoreboard players operation $mb_2zxzy+cy txd_global /= $1000 txd_global
scoreboard players operation $mb_2zxzy+cy txd_global += $mb_cy txd_global

scoreboard players operation $mb_zx txd_global = $mb_zx^2-zy^2+cx txd_global
scoreboard players operation $mb_zy txd_global = $mb_2zxzy+cy txd_global

scoreboard players add $mb_iters txd_global 1
function txd:mandelbrot/rec_test