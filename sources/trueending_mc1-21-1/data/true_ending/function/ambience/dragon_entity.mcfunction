scoreboard players add @s trueEnding_count 1
execute if score @s trueEnding_count matches 1 run function true_ending:ambience/dragon_entity_direction

particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
tp @s ^ ^ ^.3
particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
tp @s ^ ^ ^.3

execute if score @s trueEnding_count matches 10.. if predicate true_ending:chance/5_percent run tp @s ~ ~ ~ ~ 0
execute if predicate true_ending:chance/20_percent run tp @s ~ ~ ~ ~ -90

execute if score @s trueEnding_count matches 200.. run kill @s