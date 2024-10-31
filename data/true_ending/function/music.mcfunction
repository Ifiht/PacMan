scoreboard players add @s trueEnding_music 1

execute if score @s trueEnding_music matches 1 run function true_ending:music_play with storage true_ending:storage settings

execute if score @s trueEnding_music matches 4100 run scoreboard players set @s trueEnding_music 0

execute positioned 0 80 0 unless entity @s[distance=..128,predicate=true_ending:position/the_end] run function true_ending:music_stop
execute positioned 0 80 0 unless entity @e[type=ender_dragon,distance=..256] run function true_ending:music_stop
