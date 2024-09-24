scoreboard players add @s trueEnding_count 1

execute if score @s trueEnding_count matches 1 run tp @s ^ ^ ^.25 facing entity @r[gamemode=!spectator,distance=..128] feet
execute if score @s trueEnding_count matches 2..10 run tp @s ^ ^ ^.25 facing entity @r[gamemode=!spectator,distance=..128] feet
execute if score @s trueEnding_count matches 11..20 run tp @s ^ ^ ^.5
execute if score @s trueEnding_count matches 21..30 run tp @s ^ ^ ^.9
execute if score @s trueEnding_count matches 31.. run tp @s ^ ^ ^1.3

particle dust_color_transition{from_color:[1.000,0.000,0.973],scale:2,to_color:[0.000,0.102,1.000]} ~ ~ ~ 0 0 0 1 1 force @a[distance=..128]
particle large_smoke ~ ~ ~ 0 0 0 .04 1 normal @a[distance=..128]
particle dragon_breath ~ ~ ~ 0 0 0 .02 2 normal @a[distance=..32]
particle electric_spark ~ ~ ~ .3 .3 .3 0 3 force @a[distance=..128]


execute if score @s trueEnding_count matches 200.. run kill @s

execute if score @s trueEnding_count matches 10.. positioned ~ ~-1 ~ if entity @e[distance=..1.4,type=!#true_ending:misc,type=!ender_dragon] run function true_ending:boss/ultra_fireball_hit
execute unless block ~ ~ ~ #true_ending:permeable run function true_ending:boss/ultra_fireball_hit
