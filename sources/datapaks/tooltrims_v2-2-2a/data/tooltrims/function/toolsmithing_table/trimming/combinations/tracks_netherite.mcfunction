item replace block ~ ~ ~ container.24 from block ~ ~ ~ container.20 tooltrims:trims/tracks_netherite
scoreboard players add @s 310_combination 208
execute store result block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_data".combination int 1 run scoreboard players get @s 310_combination

scoreboard players set @s 310_recipe 1