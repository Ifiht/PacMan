
#after 30 seconds, the dragon is forced into its perching phase

scoreboard players add @s trueEnding_bosstime2 1

execute if score @s trueEnding_bosstime2 matches 1 run data modify entity @s DragonPhase set value 0
execute if score @s trueEnding_bosstime2 matches 1..599 if predicate true_ending:condition/perching run data modify entity @s DragonPhase set value 0

execute if score @s[predicate=!true_ending:condition/dragonphase_perched] trueEnding_bosstime2 matches 601 run data modify entity @s DragonPhase set value 3
execute if score @s trueEnding_bosstime2 matches 621.. run scoreboard players set @s trueEnding_bosstime2 600

execute as @s[predicate=!true_ending:condition/dragonphase_perched] run data modify entity @s Invulnerable set value 1b
execute as @s[predicate=true_ending:condition/dragonphase_perched] run data modify entity @s Invulnerable set value 0b
execute as @s[predicate=!true_ending:condition/dragonphase_perched] run particle end_rod ~ ~2 ~ 2 2 2 .01 2 force @a[distance=..128]
