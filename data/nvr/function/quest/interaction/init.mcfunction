execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run data modify storage nvr:villager interaction_item set from entity @n[type=item_display,tag=quest.item] item.id
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction store result storage nvr:villager interaction_count int 1 run scoreboard players get @s nvr.quest.item.count
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run tag @s add selected.quest.interaction
execute store result score @s nvr.quest.item.count run data get entity @s SelectedItem.count

execute at @s run function nvr:quest/interaction/check_payout with storage nvr:villager

execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run tag @s remove selected.quest.interaction
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction run data remove entity @s interaction
advancement revoke @s only nvr:quest_interaction