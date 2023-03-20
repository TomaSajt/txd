scoreboard players operation $mb_1000zx^2 TXDGlobal = $mb_zx TXDGlobal
scoreboard players operation $mb_1000zx^2 TXDGlobal *= $mb_zx TXDGlobal

scoreboard players operation $mb_1000zy^2 TXDGlobal = $mb_zy TXDGlobal
scoreboard players operation $mb_1000zy^2 TXDGlobal *= $mb_zy TXDGlobal

scoreboard players operation $mb_1000zx^2+1000zy^2 TXDGlobal = $mb_1000zx^2 TXDGlobal
scoreboard players operation $mb_1000zx^2+1000zy^2 TXDGlobal += $mb_1000zy^2 TXDGlobal

execute if score $mb_1000zx^2+1000zy^2 TXDGlobal matches ..4000000 if score $mb_iters TXDGlobal < $mb_max_iters TXDGlobal run function txd:mandelbrot/rec
