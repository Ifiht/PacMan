
tp @s ~ ~ ~

execute if block ~ ~-1 ~ #true_ending:permeable positioned ~ ~-1 ~ run function true_ending:boss/shockwave/find_ground
execute unless block ~ ~ ~ #true_ending:permeable positioned ~ ~1 ~ run function true_ending:boss/shockwave/find_ground