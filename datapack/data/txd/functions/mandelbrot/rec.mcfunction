scoreboard players operation $mb_zx^2-zy^2+cx TXDGlobal = $mb_1000zx^2 TXDGlobal
scoreboard players operation $mb_zx^2-zy^2+cx TXDGlobal -= $mb_1000zy^2 TXDGlobal
scoreboard players operation $mb_zx^2-zy^2+cx TXDGlobal /= $1000 TXDGlobal
scoreboard players operation $mb_zx^2-zy^2+cx TXDGlobal += $mb_cx TXDGlobal

scoreboard players set $mb_2zxzy+cy TXDGlobal 2
scoreboard players operation $mb_2zxzy+cy TXDGlobal *= $mb_zx TXDGlobal
scoreboard players operation $mb_2zxzy+cy TXDGlobal *= $mb_zy TXDGlobal
scoreboard players operation $mb_2zxzy+cy TXDGlobal /= $1000 TXDGlobal
scoreboard players operation $mb_2zxzy+cy TXDGlobal += $mb_cy TXDGlobal

scoreboard players operation $mb_zx TXDGlobal = $mb_zx^2-zy^2+cx TXDGlobal
scoreboard players operation $mb_zy TXDGlobal = $mb_2zxzy+cy TXDGlobal

scoreboard players add $mb_iters TXDGlobal 1
function txd:mandelbrot/rec_test