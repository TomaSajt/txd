execute store success score is_empty TXDGlobal run data get storage txd:storage root.array.reverse.input[0]
execute if score is_empty TXDGlobal matches 1 run function txd:utils/array/reverse/rec_continue
