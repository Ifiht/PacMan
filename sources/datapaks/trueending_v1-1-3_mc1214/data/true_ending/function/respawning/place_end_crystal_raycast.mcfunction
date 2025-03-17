execute align zyx positioned ~.5 ~ ~.5 if entity @e[distance=..0.0001,type=end_crystal] run function true_ending:respawning/place_end_crystal_hit
execute as @s[tag=!trueEnding_temp] positioned ^ ^ ^.1 run function true_ending:respawning/place_end_crystal_raycast
tag @s remove trueEnding_temp