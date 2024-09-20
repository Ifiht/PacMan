# update item scoreboard
scoreboard players enable @a update_item
execute as @a[scores={update_item=1..}] run function tooltrims:update_item

# toolsmithing table
execute as @e[tag=310_place_toolsmithing_table] at @s run function tooltrims:toolsmithing_table/placement/check
execute as @e[tag=310_toolsmithing_table] at @s run function tooltrims:toolsmithing_table/tick

# deactived hopper minecarts
execute as @e[tag=310_minecart_deactived] at @s unless entity @e[tag=310_toolsmithing_table, distance=..2] run function tooltrims:fixes/hopper_minecarts_active

# gui items
clear @a minecraft:structure_block{gui:1b}
execute as @e[type=item, nbt={Item:{tag:{gui:1b}}}] run kill @s