
loot spawn ~ ~ ~ loot mechanization:assembly/item_pipe
setblock ~ ~ ~ minecraft:air
kill @s

execute align xyz positioned ~0.5 ~0.1 ~0.5 as @e[tag=mech_item_pipe,distance=0.5..1.3] run function mechanization:assembly/machines/item_pipe/break_2
