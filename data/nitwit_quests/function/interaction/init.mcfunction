execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run data modify storage eden:villager interaction_item set from entity @n[type=item_display,tag=eden.quest.item] item.id
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction store result storage eden:villager interaction_count int 1 run scoreboard players get @s eden.quest.item.count
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run tag @s add selected.quest.interaction
execute store result score @s eden.quest.item.count run data get entity @s SelectedItem.count

execute at @s run function nitwit_quests:interaction/check_payout with storage eden:villager

execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run tag @s remove selected.quest.interaction
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction run data remove entity @s interaction
advancement revoke @s only nitwit_quests:quest_interaction