
execute as @e[type=minecraft:ender_dragon] store result entity @s Health float 0.1 run data get entity @s attributes[{id:"minecraft:generic.max_health"}].base
execute as @e[type=minecraft:ender_dragon] run tag @s add trueEnding_halfhealth
execute as @e[type=minecraft:ender_dragon] run tag @s add trueEnding_quarterhealth


scoreboard players set @s trueEnding_bosstime2 599