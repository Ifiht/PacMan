scoreboard players add temp2 trueEnding_count 1
execute rotated ~10 0 positioned ~ ~.2 ~ run summon marker ~ ~ ~ {Tags:["trueEnding_shockwave","trueEnding_temp"]}
execute rotated ~10 0 positioned ~ ~.2 ~ run tp @e[sort=nearest,limit=1,type=marker,tag=trueEnding_shockwave,tag=trueEnding_temp] ~ ~ ~ ~ ~
execute rotated ~10 0 positioned ~ ~.2 ~ run tag @e[sort=nearest,limit=1,type=marker,tag=trueEnding_shockwave,tag=trueEnding_temp] remove trueEnding_temp
execute unless score temp2 trueEnding_count matches 36.. rotated ~10 ~ run function true_ending:boss/shockwave/summon
execute if score temp2 trueEnding_count matches 36.. run scoreboard players reset temp2 trueEnding_count