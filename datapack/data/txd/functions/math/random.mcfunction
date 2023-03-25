######
# Output:
#  score $random txd_global - the random int
#####
summon marker 0 0 0 {Tags: ["random_uuid_target"]}
execute as @e[tag=random_uuid_target,type=marker] store result score $random txd_global run data get entity @s UUID[0]
kill @e[tag=random_uuid_target,type=marker]