$item replace entity @s weapon.mainhand with $(interaction_item) $(reduced_item_count)

execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction if score @s nvr.quest.completed.count matches 3.. run particle minecraft:poof ~ ~-1 ~ .5 1 .5 0.01 100
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction if score @s nvr.quest.completed.count matches 3.. run data modify entity @n[type=villager,tag=nvr.quest.set,nbt={VillagerData:{profession:"minecraft:nitwit"}}] VillagerData.profession set value "minecraft:none" 
execute as @e[type=interaction,tag=quest.interaction] at @s if data entity @s interaction if score @s nvr.quest.completed.count matches 3.. run kill @s