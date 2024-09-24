scoreboard players set @e[type=minecraft:ender_dragon] trueEnding_bosstime 3000

execute as @e[type=minecraft:ender_dragon] run data modify entity @s Health set value 0.1f
execute as @e[type=minecraft:ender_dragon] run item replace entity @s weapon.mainhand with air