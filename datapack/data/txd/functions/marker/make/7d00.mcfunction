# using https://www.soltoder.com/mc-uuid-converter/
#declare entity 0-420-69-0-7d00
execute if entity 0-420-69-0-7d00 run tellraw @a "Error: Couldn't make marker 7d00 because it already exists"
summon marker ^ ^ ^ {UUID: [I; 0, 69206121, 0, 32000]}