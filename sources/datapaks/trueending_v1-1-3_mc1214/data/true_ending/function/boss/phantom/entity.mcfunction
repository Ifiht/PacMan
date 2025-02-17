execute unless score @s trueEnding_count matches 0.. run function true_ending:boss/phantom/entity_spin

effect give @s resistance 100 255 true

execute unless score @s trueEnding_count matches 0.. if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s trueEnding_count 0
execute at @s if score @s trueEnding_count matches 0.. run function true_ending:boss/phantom/entity_2