scoreboard players add temp2 trueEnding_count 1
execute rotated ~2.5 0 positioned ~ ~.2 ~ run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.00000000000009 0 force @a[distance=..128]
execute unless score temp2 trueEnding_count matches 144.. rotated ~2.5 ~ run function true_ending:boss/wave_particle_huge2
execute if score temp2 trueEnding_count matches 144.. run scoreboard players reset temp2 trueEnding_count