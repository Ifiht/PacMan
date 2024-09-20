




# COUNTERS AND CLOCKS

scoreboard players add 1min trueEnding_clock 1

scoreboard players add 20tick trueEnding_clock 1

scoreboard players add 10tick trueEnding_clock 1

scoreboard players add 2tick trueEnding_clock 1

scoreboard players add 5tick trueEnding_clock 1


#ambience
execute in the_end positioned 0 80 0 if entity @p[distance=..128] if entity @e[type=ender_dragon,distance=..256] run function true_ending:ambience/a_main

#dragon
execute as @e[type=ender_dragon,tag=!trueEnding_dragon_particlechecked,tag=!trueEnding_mirrordragon,tag=!trueEnding_dragon_noAI] at @s if data entity @s DragonPhase run function true_ending:boss/init/init
execute as @e[type=ender_dragon,tag=!trueEnding_mirrordragon,tag=!trueEnding_dragon_noAI] at @s run function true_ending:boss/a_main

#xp
execute in the_end positioned 0 90 0 as @e[distance=..24,type=experience_orb] run function true_ending:other/xp

######################################################################################################

execute as @e[type=marker,tag=trueEnding_dragonparticle] at @s run function true_ending:ambience/dragon_entity
execute as @e[type=marker,tag=trueEnding_ultrafireball] at @s run function true_ending:boss/ultra_fireball
execute as @e[type=marker,tag=trueEnding_shockwave] at @s run function true_ending:boss/shockwave/root
execute as @e[type=marker,tag=trueEnding_shockwave2] at @s run function true_ending:boss/shockwave/root2
execute as @e[type=marker,tag=trueEnding_pad] at @s run function true_ending:boss/shockwave/pad

execute as @e[type=phantom,tag=trueEnding_guardphantom] at @s run function true_ending:boss/phantom/entity

execute as @e[type=ender_dragon,tag=trueEnding_mirrordragon] at @s run function true_ending:boss/dive/decoy_enderdragon

######################################################################################################

#new dragon fireball
execute in the_end positioned 0 80 0 as @e[type=dragon_fireball,distance=..256] at @s run function true_ending:boss/summon_ultra_fireball

#respawn animation
execute if score respawn_ender_dragon trueEnding_storage matches 0.. in the_end positioned 0 65 0 unless entity @e[type=end_crystal,distance=..16,limit=1] run scoreboard players reset respawn_ender_dragon trueEnding_storage
execute unless score respawn_ender_dragon trueEnding_storage matches 0.. in the_end positioned 0 65 0 if data entity @e[type=end_crystal,distance=..16,limit=1] beam_target run scoreboard players add respawn_ender_dragon trueEnding_storage 0
execute if score respawn_ender_dragon trueEnding_storage matches 0.. in the_end positioned 0 65 0 if entity @p[distance=..128] run function true_ending:respawning/a_main

#player
execute as @a[scores={trueEnding_settings.dragonhealth=-2147483648..2147483647}] at @s run function true_ending:settings/set_value_dragonhealth

#music
execute as @a[scores={trueEnding_music=0..}] at @s run function true_ending:music

execute in the_end positioned 0 80 0 as @e[type=marker,tag=trueEnding_endspike,tag=!trueEnding_endspike_caged,distance=..128] at @s if loaded ~ ~ ~ run function true_ending:boss/phantom/summon
execute in the_end positioned 0 80 0 as @e[type=marker,tag=trueEnding_exitportal,distance=..128] at @s run function true_ending:ambience/exitportal

