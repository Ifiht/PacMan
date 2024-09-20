tag @s add trueEnding_inattack

execute if score @s trueEnding_bosstime matches 3001 run kill @e[type=marker,tag=trueEnding_shockwave]
execute if score @s trueEnding_bosstime matches 3001 run data modify entity @s Invulnerable set value 1b
execute if score @s trueEnding_bosstime matches 3001.. run data modify entity @s DragonPhase set value 5
execute if score @s trueEnding_bosstime matches 3001..3030 run tp @s ~ ~.5 ~
execute if score @s trueEnding_bosstime matches 3031..3040 run tp @s ~ ~.25 ~


execute if score @s trueEnding_bosstime matches 3050..3059 run tp @s ~ ~ ~ ~20 ~
execute if score @s trueEnding_bosstime matches 3060..3069 run tp @s ~ ~ ~ ~10 ~

#AAAAAA THE FINAL HIT OMG
execute if score @s trueEnding_bosstime matches 3060.. run execute if predicate true_ending:chance/8_percent run playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 1.2
execute if score @s trueEnding_bosstime matches 3060.. run execute if predicate true_ending:chance/8_percent run playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5
execute if score @s trueEnding_bosstime matches 3060 run function true_ending:boss/phase_totem_growl
execute if score @s trueEnding_bosstime matches 3060.. run particle dragon_breath ~ ~1.5 ~ 0 0 0 .1 3 force @a[distance=..64]
execute if score @s trueEnding_bosstime matches 3060.. run particle dragon_breath ~ ~1.5 ~ 0 0 0 .2 3 force @a[distance=..64]

execute if score @s trueEnding_bosstime matches 3080 positioned 0 100 0 run function true_ending:boss/shockwave/summon_pad

execute if score @s trueEnding_bosstime matches 3081 run particle flash ~ ~ ~ 0 0 0 0 5 force @a[distance=..128]
execute if score @s trueEnding_bosstime matches 3081 run playsound entity.warden.heartbeat hostile @a[distance=..128] ~ ~ ~ 6 2
execute if score @s trueEnding_bosstime matches 3081 run playsound entity.warden.heartbeat hostile @a[distance=..128] ~ ~ ~ 6 2
execute if score @s trueEnding_bosstime matches 3081 run playsound entity.warden.heartbeat hostile @a[distance=..64] ~ ~ ~ 6 1.2
execute if score @s trueEnding_bosstime matches 3081 run playsound entity.warden.heartbeat hostile @a[distance=..128] ~ ~ ~ 6 .8
execute if score @s trueEnding_bosstime matches 3101 run scoreboard players set @s trueEnding_bosstime 3080

execute at @s run tp @s 0 ~ 0