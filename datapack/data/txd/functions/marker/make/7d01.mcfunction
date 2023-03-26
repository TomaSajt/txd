# using https://www.soltoder.com/mc-uuid-converter/
#declare entity 0-420-69-0-7d01
execute if entity 0-420-69-0-7d01 run tellraw @a "Error: Couldn't make marker 7d01 because it already exists"
summon marker ^ ^ ^ {UUID: [I; 0, 69206121, 0, 32001]}