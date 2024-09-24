execute store result score @s nvr.health run data get entity @s Health
scoreboard players add @s nvr.health 5
execute store result storage nvr:health iron_golem int 1 run scoreboard players get @s nvr.health
data modify entity @s Health set from storage nvr:health iron_golem