
execute if entity @s[tag=mechanization.fluid_pipe] run function mechanization:machines/blocks/fluid_pipe/break
execute if entity @s[tag=mechanization.fluid_pipe] run scoreboard players set #custom mechanization.data 1
