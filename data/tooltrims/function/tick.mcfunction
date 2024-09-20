# update item scoreboard
scoreboard players enable @a update_item
execute as @a[scores={update_item=1..}] run function tooltrims:update_item

# toolsmithing table
execute as @e[tag=310_place_toolsmithing_table] at @s run function tooltrims:toolsmithing_table/placement/check
execute as @e[tag=310_toolsmithing_table] at @s run function tooltrims:toolsmithing_table/tick

# deactived hopper minecarts
execute as @e[tag=310_minecart_deactived] at @s unless entity @e[tag=310_toolsmithing_table, distance=..2] run function tooltrims:fixes/hopper_minecarts_active

# 1.20.4 and below support
execute as @a[nbt={SelectedItem:{components:{"minecraft:entity_data":{id:"minecraft:rabbit"}, "minecraft:custom_model_data":314001}}}] run item modify entity @s weapon.mainhand tooltrims:toolsmithing_table_fix

# gui items
clear @a minecraft:structure_block[custom_data={gui:1b}]
execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{gui:1b}}}}] run kill @s