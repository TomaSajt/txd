data modify entity @e[tag=txd_current_clone,limit=1] Air set from entity @s Air
data modify entity @e[tag=txd_current_clone,limit=1] CustomName set from entity @s CustomName
data modify entity @e[tag=txd_current_clone,limit=1] CustomNameVisible set from entity @s CustomNameVisible
data modify entity @e[tag=txd_current_clone,limit=1] FallDistance set from entity @s FallDistance
data modify entity @e[tag=txd_current_clone,limit=1] Fire set from entity @s Fire
data modify entity @e[tag=txd_current_clone,limit=1] Glowing set from entity @s Glowing
data modify entity @e[tag=txd_current_clone,limit=1] HasVisualFire set from entity @s HasVisualFire
# this doesn't exist on non-passenger entities (I think)
# data modify entity @e[tag=txd_current_clone,limit=1] id set from entity @s id
data modify entity @e[tag=txd_current_clone,limit=1] Invulnerable set from entity @s Invulnerable
data modify entity @e[tag=txd_current_clone,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=txd_current_clone,limit=1] NoGravity set from entity @s NoGravity
data modify entity @e[tag=txd_current_clone,limit=1] OnGround set from entity @s OnGround
# passengers cannot be set with data modify
# data modify entity @e[tag=txd_current_clone,limit=1] Passengers set from entity @s Passengers
data modify entity @e[tag=txd_current_clone,limit=1] PortalCooldown set from entity @s PortalCooldown
data modify entity @e[tag=txd_current_clone,limit=1] Pos set from entity @s Pos
data modify entity @e[tag=txd_current_clone,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=txd_current_clone,limit=1] Silent set from entity @s Silent
# we dont want to override tags, because then we couldn't reference the entity easily
# data modify entity @e[tag=txd_current_clone,limit=1] Tags set from entity @s Tags
data modify entity @e[tag=txd_current_clone,limit=1] TicksFrozen set from entity @s TicksFrozen
# UUID is unique, duh
# data modify entity @e[tag=txd_current_clone,limit=1] UUID set from entity @s UUID

