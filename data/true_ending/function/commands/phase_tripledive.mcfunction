
scoreboard players set @e[type=minecraft:ender_dragon] trueEnding_bosstime 1000
tag @e[type=ender_dragon] add trueEnding_inattack_tripledive
execute as @e[type=ender_dragon] run data modify entity @s DragonPhase set value 3