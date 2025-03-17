tag @s add trueEnding_inattack
execute if score @s trueEnding_bosstime matches 4008 run function true_ending:boss/summon_ultra_fireball


execute if score @s[tag=!trueEnding_quarterhealth] trueEnding_bosstime matches 4035 run scoreboard players set @s trueEnding_bosstime 219

execute if score @s trueEnding_bosstime matches 4016 run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 4035 run tag @s remove trueEnding_inattack
execute if score @s trueEnding_bosstime matches 4035 run scoreboard players set @s trueEnding_bosstime 219