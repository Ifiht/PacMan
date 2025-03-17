execute if score ambience trueEnding_settings matches 1..2 as @a[distance=..128] at @s run function true_ending:ambience/particle

execute if score ambience trueEnding_settings matches 1 if predicate true_ending:chance/10_percent run function true_ending:ambience/dragon_entity_summon
execute if score ambience trueEnding_settings matches 1 as @e[type=end_crystal,predicate=true_ending:position/the_end] at @s if entity @e[type=ender_dragon,distance=..256] run function true_ending:ambience/end_crystal
