tag @s add trueEnding_inattack


execute if score @s trueEnding_bosstime matches 961 run tag @s add trueEnding_inattack_tripledive



execute if score @s trueEnding_bosstime matches 1001..1010 run tp @s ~ ~.5 ~
execute if score @s trueEnding_bosstime matches 1011..1020 run tp @s ~ ~1 ~
execute if score @s trueEnding_bosstime matches 1021..1030 run tp @s ~ ~.5 ~



execute if score @s trueEnding_bosstime matches 1040 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1044 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1048 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1


execute if score @s trueEnding_bosstime matches 1040..1049 run tp @s ~ ~-.5 ~
execute if score @s trueEnding_bosstime matches 1050..1059 run tp @s ~ ~-1 ~
execute if score @s trueEnding_bosstime matches 1060..1199 run tp @s ~ ~-2 ~




execute if score @s[tag=trueEnding_inattack_tripledive] trueEnding_bosstime matches 1020 run function true_ending:boss/dive/decoy_enderdragon_summon
execute if score @s[tag=trueEnding_inattack_tripledive] trueEnding_bosstime matches 1050 run function true_ending:boss/dive/decoy_enderdragon_summon

execute positioned ~ ~-3 ~ if score @s trueEnding_bosstime matches 1040..1199 unless block ~ ~ ~ #true_ending:permeable run scoreboard players set @s trueEnding_bosstime 1200
execute positioned ~ ~-3 ~ if score @s trueEnding_bosstime matches 1040..1199 if score @s trueEnding_y matches ..32 run scoreboard players set @s trueEnding_bosstime 1200

# BAM! dragon hit the ground

execute if score @s trueEnding_bosstime matches 1200 run function true_ending:boss/dive/hit

execute if score @s[tag=trueEnding_inattack_tripledive] trueEnding_bosstime matches 1200 run scoreboard players set @s trueEnding_bosstime 1499

execute if score @s trueEnding_bosstime matches 1201..1220 run tp @s ~ ~.2 ~

execute if score @s trueEnding_bosstime matches 1210 run tag @s remove trueEnding_inattack
execute if score @s trueEnding_bosstime matches 1210 run scoreboard players set @s trueEnding_bosstime 219

#===========================================================================================

#triple hit!


execute if score @s trueEnding_bosstime matches 1500..1520 run tp @s ~ ~-1 ~
execute if score @s trueEnding_bosstime matches 1521..1599 run tp @s 0 ~ 0
execute if score @s trueEnding_bosstime matches 1560..1600 at @s run tp @s ~ ~.4 ~


execute if score @s trueEnding_bosstime matches 1540 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1544 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1548 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1

execute if score @s trueEnding_bosstime matches 1570 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1574 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1
execute if score @s trueEnding_bosstime matches 1578 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..128] ~ ~ ~ 5 1


execute if score @s trueEnding_bosstime matches 1800 run tag @s remove trueEnding_inattack
execute if score @s trueEnding_bosstime matches 1800 run tag @s remove trueEnding_inattack_tripledive
execute if score @s trueEnding_bosstime matches 1500..1600 run data modify entity @s DragonPhase set value 3
execute if score @s trueEnding_bosstime matches 1800 run scoreboard players set @s trueEnding_bosstime 219