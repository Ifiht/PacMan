execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run scoreboard players add @s nvr.quest.completed.count 1
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run loot spawn ~ ~ ~ loot nvr:villager_quest
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run playsound minecraft:entity.evoker.prepare_wololo neutral @a ~ ~ ~ 1 1.2
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run particle minecraft:glow ~ ~-1 ~ .2 1 .2 0 20

$scoreboard players remove @s nvr.quest.item.count $(interaction_count)
execute store result storage nvr:villager reduced_item_count int 1 run scoreboard players get @s nvr.quest.item.count

#function nvr:quest/interaction/remove_items with storage nvr:villager

execute if score @s nvr.quest.item.count matches 1.. run function nvr:quest/interaction/remove_items with storage nvr:villager
execute if score @s nvr.quest.item.count matches ..0 run function nvr:quest/interaction/remove_items_air with storage nvr:villager