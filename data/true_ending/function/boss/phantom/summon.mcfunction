
execute if block ~ ~ ~ iron_bars run summon phantom ~ ~ ~7 {Tags:["trueEnding_guardphantom"],NoAI:1b}

execute if block ~ ~-1 ~ bedrock if block ~ ~2 ~ iron_bars run function true_ending:boss/phantom/summon_setbedrock

execute if block ~ ~-1 ~ bedrock if block ~ ~2 ~ iron_bars run tag @s add trueEnding_endspike_caged

tp @s ~ ~ ~

execute unless block ~ ~ ~ bedrock positioned ~ ~-1 ~ run function true_ending:boss/phantom/summon