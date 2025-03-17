scoreboard players add temp trueEnding_count 1
execute positioned ~ ~-1 ~ as @e[distance=..1.5,type=!#true_ending:misc,type=!ender_dragon] at @s run function true_ending:boss/laser/hit_entity

particle dust{color:[1.000,0.075,0.973],scale:1} ~ ~ ~ .3 .3 .3 0 2 force @a[distance=..32]
particle electric_spark ~ ~ ~ .3 .3 .3 0 1 force @a[distance=..128]
execute if predicate true_ending:chance/10_percent run particle dragon_breath ~ ~ ~ .3 .3 .3 .1 1 force @a[distance=..128]

execute if predicate true_ending:chance/50_percent run particle end_rod ^ ^ ^ ^ ^ ^10000000000000000000000 0.0000000000000000000009 0 force @a[distance=..256]



execute unless block ~ ~ ~ #true_ending:air unless block ~ ~ ~ #true_ending:stops_laser run function true_ending:boss/laser/break_blocks

execute if block ~ ~ ~ #true_ending:stops_laser positioned ~ ~1 ~ align y run function true_ending:boss/laser/hit


execute unless score temp trueEnding_count matches 128.. unless block ~ ~ ~ #true_ending:stops_laser positioned ^ ^ ^1 run function true_ending:boss/laser/raycast



scoreboard players reset temp trueEnding_count