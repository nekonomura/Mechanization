
scoreboard players remove @s energy.storage 128
scoreboard players remove @s mechanization.fluid.0 1
scoreboard players remove @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] mechanization.fluid.0 1

execute if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0

execute store result score #damage mechanization.data run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute if score #damage mechanization.data matches 1.. run scoreboard players remove #damage mechanization.data 1
execute if score #damage mechanization.data matches 1.. if entity @s[tag=mechanization.upgraded] run scoreboard players remove #damage mechanization.data 1
execute store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players get #damage mechanization.data
