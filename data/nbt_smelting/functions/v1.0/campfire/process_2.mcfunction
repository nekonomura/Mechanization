
#get data
execute store result score #craft_time nbt_smelting.data run data get block ~ ~ ~ CookingTimes[2]
execute store result score #total_craft_time nbt_smelting.data run data get block ~ ~ ~ CookingTotalTimes[2]

#check status
scoreboard players remove #total_craft_time nbt_smelting.data 21
execute if score #craft_time nbt_smelting.data >= #total_craft_time nbt_smelting.data run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:2b}]
execute if score #craft_time nbt_smelting.data >= #total_craft_time nbt_smelting.data run function #nbt_smelting:v1/campfire
execute if score #craft_time nbt_smelting.data >= #total_craft_time nbt_smelting.data run data remove block ~ ~ ~ Items[{Slot:2b}]
