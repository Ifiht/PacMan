execute as @e[type=interaction,tag=quest.interaction] unless predicate nvr:entity/riding_quest_vehicle run kill @s
execute as @e[type=text_display,tag=quest.text] unless predicate nvr:entity/riding_quest_vehicle run kill @s
execute as @e[type=item_display,tag=quest.item] unless predicate nvr:entity/riding_quest_vehicle run kill @s