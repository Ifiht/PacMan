$item replace entity @s weapon.mainhand with $(interaction_item) $(reduced_item_count)

execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction if score @s eden.quest.completed.count matches 3.. run particle minecraft:poof ~ ~-1 ~ .5 1 .5 0.01 100
execute as @e[type=interaction,tag=eden.quest.interaction] at @s if data entity @s interaction if score @s eden.quest.completed.count matches 3.. run kill @s