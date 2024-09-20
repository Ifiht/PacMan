item replace block ~ ~ ~ container.24 from block ~ ~ ~ container.20 tooltrims:trims/frost_iron

scoreboard players set .310_trim 310_operation 36
scoreboard players operation @s 310_combination *= .310_40 310_operation
scoreboard players operation @s 310_combination += .310_trim 310_operation
execute store result block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_data".combination int 1 run scoreboard players get @s 310_combination

scoreboard players set @s 310_recipe 1