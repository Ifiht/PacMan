scoreboard objectives add 310_result_count dummy
execute if block ~ ~ ~ barrel{Items:[{Slot:24b, id:"minecraft:structure_block", tag:{CustomModelData:312002}}]} run item replace block ~ ~ ~ container.24 from block ~ ~ ~ container.20 tooltrims:math/set_2

scoreboard players set @s 310_template 313002
scoreboard players set @s 310_recipe 2