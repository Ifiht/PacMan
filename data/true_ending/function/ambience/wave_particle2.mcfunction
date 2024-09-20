scoreboard players add temp2 trueEnding_count 1
execute rotated ~5 0 positioned ~ ~.2 ~ run particle dragon_breath ^ ^ ^.5 ^ ^ ^10000000000000 0.00000000000004 0 force @a[distance=..128]
execute unless score temp2 trueEnding_count matches 72.. rotated ~5 ~ run function true_ending:ambience/wave_particle2
execute if score temp2 trueEnding_count matches 72.. run scoreboard players reset temp2 trueEnding_count