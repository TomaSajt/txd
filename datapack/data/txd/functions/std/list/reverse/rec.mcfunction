data modify storage txd:storage root.list.reverse.output prepend from storage txd:storage root.list.reverse.input[0]
data remove storage txd:storage root.list.reverse.input[0]
function txd:list/reverse/rec_test