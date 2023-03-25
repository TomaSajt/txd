data modify storage txd:storage root.temp set from storage txd:storage root.std.nbt.is_equal.a
execute store success score $temp txd_global run data modify storage txd:storage root.temp set from storage txd:storage root.std.nbt.is_equal.b
execute store success score $equal txd_global if score $temp txd_global matches 0