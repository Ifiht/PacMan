scoreboard players add respawn_ender_dragon trueEnding_storage 1

execute if score respawn_ender_dragon trueEnding_storage matches 400..580 if predicate true_ending:chance/15_percent run playsound minecraft:ambient.warped_forest.additions ambient @a[distance=..128] ~ ~ ~ 6 .9
execute if score respawn_ender_dragon trueEnding_storage matches 500 run playsound minecraft:ambient.warped_forest.additions ambient @a[distance=..128] ~ ~ ~ 6 .9
execute if score respawn_ender_dragon trueEnding_storage matches 500 run playsound minecraft:ambient.warped_forest.additions ambient @a[distance=..128] ~ ~ ~ 6 .9
execute if score respawn_ender_dragon trueEnding_storage matches 500 run playsound minecraft:ambient.warped_forest.additions ambient @a[distance=..128] ~ ~ ~ 6 .9



execute if score 10tick trueEnding_clock matches 1 if score respawn_ender_dragon trueEnding_storage matches 60..580 at @e[distance=..16,type=end_crystal] run function true_ending:ambience/wave_particle3

#activate
execute if score respawn_ender_dragon trueEnding_storage matches 15 run playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 4 1
execute if score respawn_ender_dragon trueEnding_storage matches 15 run playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 4 .65
execute if score respawn_ender_dragon trueEnding_storage matches 15 as @e[distance=..16,type=end_crystal] at @s positioned ~ ~1 ~ run function true_ending:ambience/wave_particle2

#one by one... each end crystal... appears from the horizon line....
execute if score respawn_ender_dragon trueEnding_storage matches 100 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 140 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 180 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 220 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 260 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 300 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 340 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 380 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 420 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 460 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 500 run function true_ending:respawning/set
execute if score respawn_ender_dragon trueEnding_storage matches 500 run playsound minecraft:block.beacon.power_select block @a[distance=..128] ~ ~ ~ 4 .5

#end rod
execute if score respawn_ender_dragon trueEnding_storage matches 600 as @e[distance=..16,type=end_crystal] at @s positioned ~ ~1 ~ run particle end_rod ~ ~50 ~ 0 50 0 .4 50 force @a[distance=..256]


#the bells ring... the dragon...
execute if score respawn_ender_dragon trueEnding_storage matches 525 run playsound block.bell.resonate block @a[distance=..128] ~ ~ ~ 4 .5
execute if score respawn_ender_dragon trueEnding_storage matches 525 run playsound block.bell.resonate block @a[distance=..128] ~ ~ ~ 4 .5
execute if score respawn_ender_dragon trueEnding_storage matches 597..598 as @e[distance=..16,type=end_crystal] at @s run particle flash ~ ~ ~ 0 0 0 .2 4 force @a[distance=..128]



#IS HERE!!! YIPEE!!! oh.
execute if score respawn_ender_dragon trueEnding_storage matches 601 if score globalsound trueEnding_settings matches 1 run function true_ending:respawning/end2
execute if score respawn_ender_dragon trueEnding_storage matches 601 if score globalsound trueEnding_settings matches 0 run function true_ending:respawning/end2_nonglobal
execute if score respawn_ender_dragon trueEnding_storage matches 601 as @e[distance=..16,type=end_crystal] at @s run function true_ending:respawning/end
execute if score respawn_ender_dragon trueEnding_storage matches 40.. as @e[distance=..16,type=end_crystal] at @s run particle dragon_breath ~ ~1 ~ 0 0 0 .05 2 normal

execute if score respawn_ender_dragon trueEnding_storage matches 601 run scoreboard players reset respawn_ender_dragon trueEnding_storage