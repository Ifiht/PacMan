tag @s add trueEnding_inattack
execute if score @s trueEnding_bosstime matches 1 run playsound minecraft:block.ender_chest.open hostile @a[distance=..128] ~ ~ ~ 6 .5
execute if score @s trueEnding_bosstime matches 1 run playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..128] ~ ~ ~ 6 .7
execute if score @s trueEnding_bosstime matches 1 run data merge entity @s {Invulnerable:1b,Silent:1b,NoAI:1b}

execute if score @s trueEnding_bosstime matches 20 run data merge entity @s {Silent:0b,NoAI:0b,DragonPhase:0,Invulnerable:0b}
execute if score @s trueEnding_bosstime matches 20 run particle dragon_breath ~ ~1.5 ~ 0 0 0 0.2 100 force @a[distance=..128]
execute if score @s trueEnding_bosstime matches 20 run particle dragon_breath ~ ~1.5 ~ 0 0 0 0.4 100 force @a[distance=..128]
execute if score @s trueEnding_bosstime matches 20 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 7 .8

execute if score @s trueEnding_bosstime matches 40 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 60 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 80 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 100 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 120 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball

execute if score @s trueEnding_bosstime matches 50 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 70 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 90 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 110 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball
execute if score @s trueEnding_bosstime matches 130 positioned ~ ~1.5 ~ run function true_ending:boss/summon_ultra_fireball

execute if score @s trueEnding_bosstime matches 218 run tag @s remove trueEnding_inattack
