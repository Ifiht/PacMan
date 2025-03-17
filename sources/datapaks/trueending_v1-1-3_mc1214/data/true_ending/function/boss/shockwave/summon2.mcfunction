scoreboard players add temp2 trueEnding_count 1
execute rotated ~2.5 0 positioned ~ ~.2 ~ run summon marker ~ ~ ~ {Tags:["trueEnding_shockwave2","trueEnding_temp"]}
execute rotated ~2.5 0 positioned ~ ~.2 ~ run tp @e[sort=nearest,limit=1,type=marker,tag=trueEnding_shockwave2,tag=trueEnding_temp] ~ ~ ~ ~ ~
execute rotated ~2.5 0 positioned ~ ~.2 ~ run tag @e[sort=nearest,limit=1,type=marker,tag=trueEnding_shockwave2,tag=trueEnding_temp] remove trueEnding_temp
execute unless score temp2 trueEnding_count matches 144.. rotated ~2.5 ~ run function true_ending:boss/shockwave/summon2
execute if score temp2 trueEnding_count matches 144.. run scoreboard players reset temp2 trueEnding_count