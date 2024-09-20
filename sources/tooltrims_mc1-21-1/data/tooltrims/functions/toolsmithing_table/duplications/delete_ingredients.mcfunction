item modify block ~ ~ ~ container.19 tooltrims:math/subtract_1
item modify block ~ ~ ~ container.20 tooltrims:math/subtract_1
item modify block ~ ~ ~ container.21 tooltrims:math/subtract_7

execute at @s run playsound block.smithing_table.use block @a[distance=..6] ~ ~ ~
scoreboard players set @s 310_recipe 0
scoreboard players reset .310_template 310_operation