
execute as @s[predicate=true_ending:position/the_end] positioned 0 80 0 run advancement grant @a[distance=..128,gamemode=!spectator] only minecraft:end/kill_dragon

execute as @s[predicate=!true_ending:position/the_end] run advancement grant @a[distance=..128,gamemode=!spectator] only minecraft:end/kill_dragon

kill @e[type=phantom,tag=trueEnding_guardphantom]

execute if score music_defeat trueEnding_settings matches 1 run function true_ending:other/kill_dragon_play_music with storage true_ending:storage settings
stopsound @a[distance=..256] * true_ending:music.dragon
scoreboard players reset @a[distance=..256] trueEnding_music

advancement revoke @s only true_ending:kill_dragon

kill @e[type=area_effect_cloud,tag=trueEnding_dragonbreath]

############################################

playsound entity.warden.sonic_boom hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound entity.warden.sonic_boom hostile @a[distance=..128] ~ ~ ~ 6 .9
playsound entity.warden.sonic_boom hostile @a[distance=..128] ~ ~ ~ 6 1.5
playsound entity.ender_dragon.hurt hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound entity.ender_dragon.hurt hostile @a[distance=..128] ~ ~ ~ 6 .8

playsound minecraft:ambient.nether_wastes.mood hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound minecraft:ambient.nether_wastes.mood hostile @a[distance=..128] ~ ~ ~ 6 .55
playsound minecraft:ambient.nether_wastes.mood hostile @a[distance=..128] ~ ~ ~ 6 .6

playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .65
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .65
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5
playsound minecraft:ambient.warped_forest.additions hostile @a[distance=..128] ~ ~ ~ 6 .5


execute in the_end positioned 0 100 0 run function true_ending:ambience/exitportal_summon