execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run scoreboard players add @s eden.quest.completed.count 1
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run loot spawn ~ ~ ~ loot eden:gameplay/villager_quest
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run playsound minecraft:entity.evoker.prepare_wololo neutral @a ~ ~ ~ 1 1.2
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run particle minecraft:glow ~ ~-1 ~ .2 1 .2 0 20

$scoreboard players remove @s eden.quest.item.count $(interaction_count)
execute store result storage eden:villager reduced_item_count int 1 run scoreboard players get @s eden.quest.item.count

execute if score @s eden.quest.item.count matches 1.. run function nitwit_quests:interaction/remove_items with storage eden:villager
execute if score @s eden.quest.item.count matches ..0 run function nitwit_quests:interaction/remove_items_air with storage eden:villager