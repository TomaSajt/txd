data modify storage txd:storage root.array.reverse.output prepend from storage txd:storage root.array.reverse.input[0]
data remove storage txd:storage root.array.reverse.input[0]
function txd:array/reverse/rec_test