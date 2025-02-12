
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.0 mechanization.data 32
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.1 mechanization.data 32
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.2 mechanization.data 32

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.0 mechanization.data 32
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.1 mechanization.data 32
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.2 mechanization.data 32

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 576
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 576

scoreboard players add #storage.2 mechanization.data 576
execute unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_ender_alloy"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_ender_alloy
execute unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_ender_alloy"} run data modify entity @s Item.tag.tank_3 set from block -30000000 0 3201 Items[0]
