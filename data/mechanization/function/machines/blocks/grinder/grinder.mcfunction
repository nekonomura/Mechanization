
# check output
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/blocks/grinder/output
execute if score @s mechanization.time matches 1 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/blocks/grinder/output_upgrade
execute if score @s mechanization.time matches 1 if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/blocks/grinder/output_upgrade_nether
execute if score @s mechanization.time matches 1 if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/blocks/grinder/output_upgrade_ender

# check input
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if entity @s[tag=!mechanization.upgraded] if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/grinder/input
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/grinder/input_upgrade
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if entity @s[tag=mechanization.upgraded.nether] if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/grinder/input_upgrade_nether
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if entity @s[tag=mechanization.upgraded.ender] if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/grinder/input_upgrade_ender

# update
execute if score @s energy.storage < #machines.cf.grinder.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.grinder.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1
execute if score @s mechanization.time matches 1.. unless items block ~ ~ ~ container.0 * run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if entity @s[tag=!mechanization.muffled] if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.grinder block @a[distance=..16] ~ ~ ~ 0.75 0.9

# ui
function mechanization:base/utils/generate_energy_bar_ui

execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_block/break_machine_t1
