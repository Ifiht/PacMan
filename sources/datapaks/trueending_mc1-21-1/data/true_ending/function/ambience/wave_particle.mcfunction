scoreboard players add temp2 trueEnding_count 1
execute rotated ~20 0 positioned ~ ~.2 ~ run particle dragon_breath ^ ^ ^0 ^ ^ ^10000000000000 0.000000000000005 0 force @a[distance=..128]
execute unless score temp2 trueEnding_count matches 18.. rotated ~20 ~ run function true_ending:ambience/wave_particle
execute if score temp2 trueEnding_count matches 18.. run scoreboard players reset temp2 trueEnding_count