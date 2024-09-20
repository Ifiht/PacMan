tag @s add trueEnding_inattack

execute if score @s trueEnding_bosstime matches 2001..2040 run data merge entity @s {DragonPhase:3}

execute if score @s trueEnding_y matches ..84 if score @s trueEnding_bosstime matches 2040..2059 run tp @s ~ ~.5 ~
execute if score @s trueEnding_y matches ..84 if score @s trueEnding_bosstime matches 2060..2999 run tp @s ~ ~1 ~

execute if score @s trueEnding_y matches 86.. if score @s trueEnding_bosstime matches 2040..2059 run tp @s ~ ~-.5 ~
execute if score @s trueEnding_y matches 86.. if score @s trueEnding_bosstime matches 2060..2999 run tp @s ~ ~-1 ~

execute if score @s trueEnding_y matches 85 if score @s trueEnding_bosstime matches 2040..2180 run scoreboard players set @s trueEnding_bosstime 2181

################################################



execute if score @s trueEnding_bosstime matches 2202 run playsound block.bell.resonate hostile @a[distance=..256] ~ ~ ~ 8 1.2

execute if score @s trueEnding_bosstime matches 2200..2240 if score 10tick trueEnding_clock matches 1 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..256] ~ ~ ~ 8 1.6
execute if score @s trueEnding_bosstime matches 2200..2240 if score 10tick trueEnding_clock matches 1 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..256] ~ ~ ~ 8 1.1

execute if score @s trueEnding_bosstime matches 2248..2253 rotated ~ 0 positioned ^ ^ ^-5 rotated ~-180 ~ run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .15 10 force @a[distance=..128]
execute if score @s trueEnding_bosstime matches 2240 rotated ~ 0 positioned ^-3.5 ^ ^-5 rotated ~-180 ~ run data modify entity @s NoAI set value 1b

execute if score @s trueEnding_bosstime matches 2251 rotated ~ 0 positioned ^-3.5 ^ ^-5 rotated ~-180 ~ run data modify entity @s NoAI set value 0b

# release
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:entity.enderman.stare hostile @a[distance=..256] ~ ~ ~ 8 1.5
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:entity.enderman.stare hostile @a[distance=..256] ~ ~ ~ 8 1.2
execute if score @s trueEnding_bosstime matches 2271 run playsound minecraft:entity.enderman.stare hostile @a[distance=..256] ~ ~ ~ 8 1
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .5
execute if score @s trueEnding_bosstime matches 2251 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8

execute if score @s trueEnding_bosstime matches 2250..2281 run tp @s ~ ~ ~ ~ 90

#blehhhhhh :3
execute if score @s trueEnding_bosstime matches 2251.. at @s rotated ~ 0 positioned ^-3 ^ ^-5 rotated as @s rotated ~-180 ~ run function true_ending:boss/laser/init

#rotate 1 (x and z)
execute if score @s trueEnding_bosstime matches 2281..2300 at @s run tp @s ~ ~ ~ ~4.5 ~
execute if score @s trueEnding_bosstime matches 2301..2460 at @s run tp @s ~ ~ ~ ~9 ~
execute if score @s trueEnding_bosstime matches 2461..2520 at @s run tp @s ~ ~ ~ ~4.5 ~
execute if score @s trueEnding_bosstime matches 2521..2550 at @s run tp @s ~ ~ ~ ~2.25 ~
execute if score @s trueEnding_bosstime matches 2551..2560 at @s run tp @s ~ ~ ~ ~1.125 ~

#rotate 2 (y)
execute if score @s trueEnding_bosstime matches 2311..2320 at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s trueEnding_bosstime matches 2321..2380 at @s run tp @s ~ ~ ~ ~ ~-.43
execute if score @s trueEnding_bosstime matches 2381..2480 at @s run tp @s ~ ~ ~ ~ ~-.25





execute if score @s trueEnding_bosstime matches 2251..2271 at @s run data merge entity @s {DragonPhase:7,Invulnerable:0b}
execute if score @s trueEnding_bosstime matches 2271 at @s run data merge entity @s {DragonPhase:7,Invulnerable:0b}
execute if score @s trueEnding_bosstime matches 2471 at @s run data merge entity @s {DragonPhase:7,Invulnerable:0b}

#end
execute if score @s trueEnding_bosstime matches 2575 at @s run data merge entity @s {DragonPhase:0,Invulnerable:0b}
execute if score @s trueEnding_bosstime matches 2575 run tag @s remove trueEnding_inattack
execute if score @s trueEnding_bosstime matches 2575 run scoreboard players set @s trueEnding_bosstime 219
