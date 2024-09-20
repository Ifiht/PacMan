tp @s ~ ~0.95 ~
execute at @s positioned ~ ~ ~ align xyz run tp @s ~0.5 ~ ~0.5

execute at @s unless block ~ ~ ~ #tooltrims:replaceable_blocks run tag @s add 310_toolsmithing_table_stop
execute at @s if block ~ ~ ~ minecraft:air run tag @s remove 310_toolsmithing_table_stop
execute at @s if block ~ ~ ~ minecraft:cave_air run tag @s remove 310_toolsmithing_table_stop
execute at @s if entity @p[distance=..0.5] run tag @s add 310_toolsmithing_table_stop

execute at @s if entity @s[tag=310_toolsmithing_table_stop] run function tooltrims:toolsmithing_table/placement/check_stop
execute at @s if entity @s[tag=!310_toolsmithing_table_stop] run function tooltrims:toolsmithing_table/placement/place